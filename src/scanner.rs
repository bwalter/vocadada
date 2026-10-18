//! QR code scanner using the browser camera (web only).

use std::cell::RefCell;
use std::rc::Rc;

use eframe::egui::{self, ColorImage, TextureHandle, TextureOptions};
use eframe::wasm_bindgen::{JsCast as _, JsValue};
use wasm_bindgen_futures::JsFuture;
use web_sys::{CanvasRenderingContext2d, HtmlCanvasElement, HtmlVideoElement, MediaStream};

/// Camera frames are scaled down to this width before decoding.
const SCAN_WIDTH: u32 = 480;
const SCAN_INTERVAL: f64 = 0.15;

pub enum Scan {
    Waiting,
    Found(String),
    Failed,
}

pub struct Scanner {
    video: HtmlVideoElement,
    canvas: HtmlCanvasElement,
    stream: Rc<RefCell<Option<MediaStream>>>,
    failed: Rc<RefCell<bool>>,
    texture: Option<TextureHandle>,
    last_scan: f64,
}

impl Scanner {
    pub fn start(ctx: &egui::Context) -> Option<Self> {
        let document = web_sys::window()?.document()?;
        let video: HtmlVideoElement = document.create_element("video").ok()?.dyn_into().ok()?;
        // iOS only plays camera video inline, muted, and attached to the page.
        for attribute in ["autoplay", "muted", "playsinline"] {
            video.set_attribute(attribute, "").ok()?;
        }
        video
            .set_attribute("style", "position:fixed;width:1px;height:1px;opacity:0;pointer-events:none")
            .ok()?;
        document.body()?.append_child(&video).ok()?;
        let canvas: HtmlCanvasElement = document.create_element("canvas").ok()?.dyn_into().ok()?;

        let scanner = Self {
            video: video.clone(),
            canvas,
            stream: Rc::default(),
            failed: Rc::default(),
            texture: None,
            last_scan: 0.0,
        };
        let (stream_slot, failed, ctx) = (scanner.stream.clone(), scanner.failed.clone(), ctx.clone());
        wasm_bindgen_futures::spawn_local(async move {
            match open_camera(&video).await {
                // The scanner may have been closed while the camera was starting.
                Ok(stream) if Rc::strong_count(&stream_slot) == 1 => stop(&stream),
                Ok(stream) => *stream_slot.borrow_mut() = Some(stream),
                Err(_) => *failed.borrow_mut() = true,
            }
            ctx.request_repaint();
        });
        Some(scanner)
    }

    /// Shows the camera picture and looks for a QR code in it.
    pub fn show(&mut self, ui: &mut egui::Ui, width: f32) -> Scan {
        if *self.failed.borrow() {
            return Scan::Failed;
        }
        ui.ctx().request_repaint();
        let (w, h) = (self.video.video_width(), self.video.video_height());
        let mut found = None;
        if w > 0 && h > 0 {
            let (sw, sh) = (SCAN_WIDTH.min(w), (SCAN_WIDTH.min(w) * h / w).max(1));
            let now = ui.input(|i| i.time);
            if now - self.last_scan >= SCAN_INTERVAL || self.texture.is_none() {
                self.last_scan = now;
                if let Some(rgba) = self.grab(sw, sh) {
                    found = decode(&rgba, sw as usize, sh as usize);
                    let image = ColorImage::from_rgba_unmultiplied([sw as usize, sh as usize], &rgba);
                    match &mut self.texture {
                        Some(texture) => texture.set(image, TextureOptions::LINEAR),
                        None => {
                            self.texture = Some(ui.ctx().load_texture("qr_scanner", image, TextureOptions::LINEAR))
                        }
                    }
                }
            }
        }
        match &self.texture {
            Some(texture) => {
                let size = texture.size_vec2() * (width / texture.size_vec2().x);
                ui.add(egui::Image::new(texture).fit_to_exact_size(size).corner_radius(12));
            }
            None => {
                ui.add_sized([width, width * 0.75], egui::Spinner::new().size(40.0));
            }
        }
        found.map_or(Scan::Waiting, Scan::Found)
    }

    fn grab(&self, w: u32, h: u32) -> Option<Vec<u8>> {
        self.canvas.set_width(w);
        self.canvas.set_height(h);
        let context: CanvasRenderingContext2d = self.canvas.get_context("2d").ok()??.dyn_into().ok()?;
        context
            .draw_image_with_html_video_element_and_dw_and_dh(&self.video, 0.0, 0.0, w as f64, h as f64)
            .ok()?;
        Some(context.get_image_data(0.0, 0.0, w as f64, h as f64).ok()?.data().0)
    }
}

impl Drop for Scanner {
    fn drop(&mut self) {
        if let Some(stream) = self.stream.borrow_mut().take() {
            stop(&stream);
        }
        self.video.remove();
    }
}

fn stop(stream: &MediaStream) {
    for track in stream.get_tracks() {
        if let Ok(track) = track.dyn_into::<web_sys::MediaStreamTrack>() {
            track.stop();
        }
    }
}

async fn open_camera(video: &HtmlVideoElement) -> Result<MediaStream, JsValue> {
    let devices = web_sys::window().ok_or(JsValue::NULL)?.navigator().media_devices()?;
    let video_constraints = js_sys::Object::new();
    js_sys::Reflect::set(&video_constraints, &"facingMode".into(), &"environment".into())?;
    let constraints = web_sys::MediaStreamConstraints::new();
    constraints.set_video(&video_constraints);
    constraints.set_audio(&JsValue::FALSE);
    let stream: MediaStream = JsFuture::from(devices.get_user_media_with_constraints(&constraints)?).await?.dyn_into()?;
    video.set_src_object(Some(&stream));
    JsFuture::from(video.play()?).await?;
    Ok(stream)
}

fn decode(rgba: &[u8], w: usize, h: usize) -> Option<String> {
    let grey: Vec<u8> = rgba
        .chunks_exact(4)
        .map(|p| ((p[0] as u32 * 77 + p[1] as u32 * 150 + p[2] as u32 * 29) >> 8) as u8)
        .collect();
    let mut image = rqrr::PreparedImage::prepare_from_greyscale(w, h, |x, y| grey[y * w + x]);
    image.detect_grids().into_iter().find_map(|grid| grid.decode().ok().map(|(_, text)| text))
}
