use crate::i18n::{tr, Language};
use eframe::egui::{
    self, epaint::Shadow, pos2, vec2, Align2, Color32, Context, CornerRadius, CursorIcon, FontId, Frame, Id,
    LayerId, Margin, Order, Painter, Pos2, Rect, Response, RichText, Sense, Shape, Stroke, StrokeKind,
    TextStyle, Ui, Vec2,
};
use rand::Rng;
use std::f32::consts::{FRAC_PI_2, PI, TAU};

pub const BG: Color32 = Color32::from_rgb(255, 249, 240);
pub const SIDE_BG: Color32 = Color32::from_rgb(255, 234, 212);
pub const TEXT: Color32 = Color32::from_rgb(55, 40, 80);
pub const TEXT_SOFT: Color32 = Color32::from_rgb(130, 115, 150);
pub const PURPLE: Color32 = Color32::from_rgb(124, 77, 255);
pub const BLUE: Color32 = Color32::from_rgb(30, 136, 229);
pub const BLUE_DARK: Color32 = Color32::from_rgb(21, 101, 192);
pub const ORANGE: Color32 = Color32::from_rgb(245, 124, 0);
pub const ORANGE_DARK: Color32 = Color32::from_rgb(216, 90, 0);
pub const GREEN: Color32 = Color32::from_rgb(56, 170, 72);
pub const GREEN_DARK: Color32 = Color32::from_rgb(36, 128, 50);
pub const PALE_GREEN: Color32 = Color32::from_rgb(232, 248, 233);
pub const RED: Color32 = Color32::from_rgb(229, 72, 72);
pub const PINK: Color32 = Color32::from_rgb(236, 64, 122);
pub const GOLD: Color32 = Color32::from_rgb(255, 193, 7);
pub const GOLD_DARK: Color32 = Color32::from_rgb(230, 140, 0);
pub const GRAY: Color32 = Color32::from_rgb(150, 140, 165);
pub const LIGHT_GRAY: Color32 = Color32::from_rgb(232, 226, 238);

pub fn apply(ctx: &Context) {
    ctx.set_theme(egui::Theme::Light);
    let mut style = (*ctx.style()).clone();
    style.text_styles = [
        (TextStyle::Heading, FontId::proportional(32.0)),
        (TextStyle::Body, FontId::proportional(20.0)),
        (TextStyle::Button, FontId::proportional(20.0)),
        (TextStyle::Monospace, FontId::monospace(18.0)),
        (TextStyle::Small, FontId::proportional(15.0)),
    ]
    .into();
    style.spacing.item_spacing = vec2(10.0, 10.0);
    style.spacing.button_padding = vec2(14.0, 8.0);
    style.spacing.interact_size.y = 34.0;

    let v = &mut style.visuals;
    v.panel_fill = BG;
    v.window_fill = Color32::WHITE;
    v.extreme_bg_color = Color32::WHITE;
    v.faint_bg_color = Color32::from_rgb(250, 244, 255);
    v.selection.bg_fill = Color32::from_rgb(214, 200, 255);
    v.selection.stroke = Stroke::new(1.5_f32, PURPLE);
    v.window_corner_radius = CornerRadius::same(16);
    let w = &mut v.widgets;
    for state in [
        &mut w.noninteractive,
        &mut w.inactive,
        &mut w.hovered,
        &mut w.active,
        &mut w.open,
    ] {
        state.corner_radius = CornerRadius::same(10);
    }
    w.noninteractive.fg_stroke.color = TEXT;
    w.noninteractive.bg_stroke.color = LIGHT_GRAY;
    w.inactive.fg_stroke.color = TEXT;
    w.inactive.bg_stroke = Stroke::new(1.0_f32, Color32::from_rgb(215, 205, 232));
    w.inactive.bg_fill = Color32::from_rgb(240, 233, 255);
    w.inactive.weak_bg_fill = Color32::from_rgb(240, 233, 255);
    w.hovered.bg_fill = Color32::from_rgb(225, 212, 255);
    w.hovered.weak_bg_fill = Color32::from_rgb(225, 212, 255);
    w.hovered.bg_stroke = Stroke::new(1.5_f32, PURPLE);
    w.active.weak_bg_fill = Color32::from_rgb(205, 186, 255);
    ctx.set_style(style);
}

/// Width of `text` in the proportional font at `size`, without wrapping.
pub fn text_width(ui: &Ui, text: &str, size: f32) -> f32 {
    ui.fonts(|f| f.layout_no_wrap(text.to_owned(), FontId::proportional(size), TEXT).size().x)
}

pub fn big_button(ui: &mut Ui, text: &str, fill: Color32, size: Vec2) -> Response {
    let label = RichText::new(text).size(22.0).strong().color(Color32::WHITE);
    ui.add(
        egui::Button::new(label)
            .fill(fill)
            .stroke(Stroke::NONE)
            .corner_radius(16)
            .min_size(size),
    )
}

/// Paints `text` as a QR code at most `size` points wide. Returns false if the text is too long for a QR code.
pub fn qr_code(ui: &mut Ui, text: &str, size: f32) -> bool {
    let Ok(code) = qrcode::QrCode::with_error_correction_level(text, qrcode::EcLevel::L) else {
        return false;
    };
    let n = code.width();
    let quiet = 4;
    // Whole pixels per module, so neighbouring modules don't leave faint seams.
    let ppp = ui.ctx().pixels_per_point();
    let module = (size * ppp / (n + 2 * quiet) as f32).floor().max(1.0) / ppp;
    let side = module * (n + 2 * quiet) as f32;
    let (rect, _) = ui.allocate_exact_size(vec2(side, side), Sense::hover());
    let origin = (rect.min.to_vec2() * ppp).round() / ppp;
    let painter = ui.painter();
    painter.rect_filled(rect, 0, Color32::WHITE);
    for (i, color) in code.to_colors().into_iter().enumerate() {
        if color == qrcode::Color::Dark {
            let pos = vec2((i % n + quiet) as f32, (i / n + quiet) as f32) * module;
            painter.rect_filled(Rect::from_min_size((origin + pos).to_pos2(), Vec2::splat(module)), 0, Color32::BLACK);
        }
    }
    true
}

/// `text` as a QR code picture (black on white, with the usual blank border), e.g. for the clipboard.
pub fn qr_image(text: &str) -> Option<egui::ColorImage> {
    let code = qrcode::QrCode::with_error_correction_level(text, qrcode::EcLevel::L).ok()?;
    let (n, quiet, scale) = (code.width(), 4, 8);
    let side = (n + 2 * quiet) * scale;
    let colors = code.to_colors();
    let mut image = egui::ColorImage::new([side, side], Color32::WHITE);
    for y in 0..side {
        for x in 0..side {
            let (mx, my) = ((x / scale).wrapping_sub(quiet), (y / scale).wrapping_sub(quiet));
            if mx < n && my < n && colors[my * n + mx] == qrcode::Color::Dark {
                image.pixels[y * side + x] = Color32::BLACK;
            }
        }
    }
    Some(image)
}

pub fn tab_button(ui: &mut Ui, text: &str, color: Color32, active: bool, size: Vec2, font_size: f32) -> Response {
    let (fill, text_color) = if active {
        (color, Color32::WHITE)
    } else {
        (Color32::WHITE, color)
    };
    ui.add(
        egui::Button::new(RichText::new(text).size(font_size).strong().color(text_color))
            .fill(fill)
            .stroke(Stroke::new(2.0_f32, color))
            .corner_radius(14)
            .min_size(size),
    )
}

/// Placeholder shown instead of a hidden word in View mode.
pub fn hidden_word(ui: &mut Ui, color: Color32) -> Response {
    ui.add(
        egui::Button::new(RichText::new(tr!("tap-to-peek")).size(18.0).color(color))
            .fill(color.gamma_multiply(0.12))
            .stroke(Stroke::new(1.5_f32, color.gamma_multiply(0.4)))
            .corner_radius(10)
            .min_size(vec2(ui.available_width().min(180.0), 34.0)),
    )
}

/// Flag for `language`, painted because egui's fonts have no flag emoji.
pub fn paint_flag(painter: &Painter, rect: Rect, language: Language) {
    let painter = painter.with_clip_rect(rect.intersect(painter.clip_rect()));
    let stripes = |colors: [Color32; 3], vertical: bool| {
        for (i, color) in colors.into_iter().enumerate() {
            let (a, b) = (i as f32 / 3.0, (i + 1) as f32 / 3.0);
            let stripe = if vertical {
                let x = |t: f32| rect.left() + t * rect.width();
                Rect::from_x_y_ranges(x(a)..=x(b), rect.y_range())
            } else {
                let y = |t: f32| rect.top() + t * rect.height();
                Rect::from_x_y_ranges(rect.x_range(), y(a)..=y(b))
            };
            painter.rect_filled(stripe, 0, color);
        }
    };
    match language {
        Language::German => stripes(
            [Color32::BLACK, Color32::from_rgb(221, 0, 0), Color32::from_rgb(255, 206, 0)],
            false,
        ),
        Language::French => stripes(
            [Color32::from_rgb(0, 85, 164), Color32::WHITE, Color32::from_rgb(239, 65, 53)],
            true,
        ),
        Language::English => {
            // Simplified Union Jack.
            let red = Color32::from_rgb(200, 16, 46);
            let h = rect.height();
            painter.rect_filled(rect, 0, Color32::from_rgb(1, 33, 105));
            for (from, to) in [(rect.left_top(), rect.right_bottom()), (rect.left_bottom(), rect.right_top())] {
                painter.line_segment([from, to], Stroke::new(h * 0.2, Color32::WHITE));
                painter.line_segment([from, to], Stroke::new(h * 0.08, red));
            }
            for (width, color) in [(h / 3.0, Color32::WHITE), (h / 5.0, red)] {
                painter.rect_filled(Rect::from_center_size(rect.center(), vec2(rect.width(), width)), 0, color);
                painter.rect_filled(Rect::from_center_size(rect.center(), vec2(width, h)), 0, color);
            }
        }
    }
    painter.rect_stroke(rect, 0, Stroke::new(1.0_f32, Color32::from_black_alpha(50)), StrokeKind::Inside);
}

/// Small round badge with a down arrow, to mark a button that opens a dropdown.
pub fn paint_dropdown_badge(painter: &Painter, center: Pos2) {
    painter.circle(center, 7.5, Color32::WHITE, Stroke::new(1.5_f32, PURPLE));
    let arrow = vec![center + vec2(-3.5, -1.5), center + vec2(3.5, -1.5), center + vec2(0.0, 2.5)];
    painter.add(Shape::convex_polygon(arrow, PURPLE, Stroke::NONE));
}

/// A row with flag and language name for the language menu.
pub fn language_row(ui: &mut Ui, language: Language, selected: bool) -> Response {
    let (rect, response) = ui.allocate_exact_size(vec2(ui.available_width(), 38.0), Sense::click());
    let visuals = ui.visuals();
    let fill = if selected {
        visuals.selection.bg_fill
    } else if response.hovered() {
        Color32::from_rgb(243, 238, 250)
    } else {
        Color32::TRANSPARENT
    };
    let painter = ui.painter();
    painter.rect_filled(rect, 8, fill);
    let flag = Rect::from_min_size(pos2(rect.left() + 8.0, rect.center().y - 10.0), vec2(30.0, 20.0));
    paint_flag(painter, flag, language);
    painter.text(
        pos2(flag.right() + 12.0, rect.center().y),
        Align2::LEFT_CENTER,
        language.native_name(),
        FontId::proportional(20.0),
        TEXT,
    );
    if selected {
        painter.text(
            pos2(rect.right() - 10.0, rect.center().y),
            Align2::RIGHT_CENTER,
            "✔",
            FontId::proportional(18.0),
            PURPLE,
        );
    }
    response.on_hover_cursor(CursorIcon::PointingHand)
}

pub fn card() -> Frame {
    Frame::new()
        .fill(Color32::WHITE)
        .corner_radius(18)
        .inner_margin(Margin::same(18))
        .stroke(Stroke::new(1.0_f32, LIGHT_GRAY))
        .shadow(Shadow {
            offset: [0, 4],
            blur: 12,
            spread: 0,
            color: Color32::from_black_alpha(20),
        })
}

/// "Good answers: X / Y", the number of mistakes and a progress bar.
pub fn score_bar(ui: &mut Ui, known: usize, total: usize, mistakes: usize) {
    card()
        .inner_margin(Margin::symmetric(18, 10))
        .show(ui, |ui| {
            ui.set_width(ui.available_width());
            let compact = ui.available_width() < 520.0;
            let (label_size, number_size) = if compact { (16.0, 24.0) } else { (20.0, 30.0) };
            let frac = known as f32 / total.max(1) as f32;
            let bar = || {
                egui::ProgressBar::new(frac)
                    .fill(GREEN)
                    .desired_height(20.0)
                    .corner_radius(10)
            };
            ui.horizontal(|ui| {
                ui.label(RichText::new(tr!("good-answers")).size(label_size).color(TEXT_SOFT));
                ui.label(
                    RichText::new(format!("{known} / {total}"))
                        .size(number_size)
                        .strong()
                        .color(GREEN_DARK),
                );
                ui.with_layout(egui::Layout::right_to_left(egui::Align::Center), |ui| {
                    ui.label(RichText::new(mistakes.to_string()).size(number_size).strong().color(RED));
                    ui.label(RichText::new(tr!("mistakes-label")).size(label_size).color(TEXT_SOFT));
                    if !compact {
                        ui.add_space(8.0);
                        ui.add(bar());
                    }
                });
            });
            if compact {
                ui.add(bar());
            }
        });
}

pub fn paint_star(painter: &Painter, center: Pos2, radius: f32, fill: Color32) {
    if radius <= 0.5 {
        return;
    }
    let point = |i: usize, r: f32| {
        let a = -FRAC_PI_2 + i as f32 * PI / 5.0;
        center + vec2(a.cos(), a.sin()) * r
    };
    let inner: Vec<Pos2> = (0..5).map(|k| point(2 * k + 1, radius * 0.45)).collect();
    // A star is concave, so draw it as a pentagon plus five triangles.
    painter.add(Shape::convex_polygon(inner.clone(), fill, Stroke::NONE));
    for k in 0..5 {
        let tip = point(2 * k, radius);
        painter.add(Shape::convex_polygon(
            vec![tip, inner[k], inner[(k + 4) % 5]],
            fill,
            Stroke::NONE,
        ));
    }
}

pub fn paint_ring(painter: &Painter, center: Pos2, radius: f32, fraction: f32, color: Color32, width: f32) {
    painter.circle_stroke(center, radius, Stroke::new(width, LIGHT_GRAY));
    if fraction <= 0.0 {
        return;
    }
    let n = (96.0 * fraction).ceil().max(2.0) as usize;
    let points: Vec<Pos2> = (0..=n)
        .map(|i| {
            let a = -FRAC_PI_2 + TAU * fraction * i as f32 / n as f32;
            center + vec2(a.cos(), a.sin()) * radius
        })
        .collect();
    painter.circle_filled(points[0], width / 2.0, color);
    painter.circle_filled(points[n], width / 2.0, color);
    painter.add(Shape::line(points, Stroke::new(width, color)));
}

/// Ease-out with a little overshoot, for "pop" animations.
pub fn back_out(p: f32) -> f32 {
    let c1 = 1.70158;
    let c3 = c1 + 1.0;
    1.0 + c3 * (p - 1.0).powi(3) + c1 * (p - 1.0).powi(2)
}

struct Particle {
    pos: Pos2,
    vel: Vec2,
    angle: f32,
    spin: f32,
    size: f32,
    color: Color32,
}

#[derive(Default)]
pub struct Confetti {
    particles: Vec<Particle>,
}

impl Confetti {
    pub fn burst(&mut self, screen: Rect) {
        const COLORS: [Color32; 6] = [PURPLE, BLUE, ORANGE, GREEN, PINK, GOLD];
        let mut rng = rand::thread_rng();
        for _ in 0..260 {
            self.particles.push(Particle {
                pos: pos2(
                    rng.gen_range(screen.left()..screen.right()),
                    rng.gen_range(screen.top() - screen.height()..screen.top()),
                ),
                vel: vec2(rng.gen_range(-60.0..60.0), rng.gen_range(140.0..300.0)),
                angle: rng.gen_range(0.0..TAU),
                spin: rng.gen_range(-6.0..6.0),
                size: rng.gen_range(5.0..10.0),
                color: COLORS[rng.gen_range(0..COLORS.len())],
            });
        }
    }

    pub fn show(&mut self, ctx: &Context) {
        if self.particles.is_empty() {
            return;
        }
        let (dt, time) = ctx.input(|i| (i.stable_dt.min(0.05), i.time as f32));
        let bottom = ctx.screen_rect().bottom() + 20.0;
        let painter = ctx.layer_painter(LayerId::new(Order::Foreground, Id::new("confetti")));
        for p in &mut self.particles {
            p.pos += p.vel * dt;
            p.pos.x += (time * 3.0 + p.angle).sin() * 40.0 * dt;
            p.angle += p.spin * dt;
            let (s, c) = p.angle.sin_cos();
            let half_w = vec2(c, s) * p.size;
            let half_h = vec2(-s, c) * p.size * 0.5;
            painter.add(Shape::convex_polygon(
                vec![
                    p.pos - half_w - half_h,
                    p.pos + half_w - half_h,
                    p.pos + half_w + half_h,
                    p.pos - half_w + half_h,
                ],
                p.color,
                Stroke::NONE,
            ));
        }
        self.particles.retain(|p| p.pos.y < bottom);
        ctx.request_repaint();
    }
}
