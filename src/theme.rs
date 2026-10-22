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
    // Cross centered at `x` (fraction of the width); arms are drawn widest first, widths as fractions of the height.
    let nordic_cross = |background: Color32, x: f32, arms: &[(f32, Color32)]| {
        painter.rect_filled(rect, 0, background);
        let center = pos2(rect.left() + rect.width() * x, rect.center().y);
        for &(width, color) in arms {
            let width = width * rect.height();
            painter.rect_filled(Rect::from_center_size(center, vec2(width, rect.height())), 0, color);
            painter.rect_filled(
                Rect::from_x_y_ranges(rect.x_range(), center.y - width / 2.0..=center.y + width / 2.0),
                0,
                color,
            );
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
        Language::Dutch => stripes(
            [Color32::from_rgb(174, 28, 40), Color32::WHITE, Color32::from_rgb(33, 70, 139)],
            false,
        ),
        Language::Hungarian => stripes(
            [Color32::from_rgb(205, 42, 62), Color32::WHITE, Color32::from_rgb(67, 111, 77)],
            false,
        ),
        Language::Russian => stripes(
            [Color32::WHITE, Color32::from_rgb(0, 57, 166), Color32::from_rgb(213, 43, 30)],
            false,
        ),
        Language::Slovak => {
            stripes([Color32::WHITE, Color32::from_rgb(11, 78, 162), Color32::from_rgb(238, 28, 37)], false);
            // Simplified coat of arms (red shield, white double cross), so it doesn't look like Russia's flag.
            let (w, h) = (rect.height() * 0.42, rect.height() * 0.6);
            let top_left = pos2(rect.left() + rect.width() * 0.34 - w / 2.0, rect.center().y - h / 2.0);
            let shield = vec![
                top_left,
                top_left + vec2(w, 0.0),
                top_left + vec2(w, h * 0.6),
                top_left + vec2(w / 2.0, h),
                top_left + vec2(0.0, h * 0.6),
            ];
            painter.add(Shape::convex_polygon(shield, Color32::from_rgb(238, 28, 37), Stroke::new(1.0_f32, Color32::WHITE)));
            let cx = top_left.x + w / 2.0;
            let bar = (h * 0.1).max(1.0);
            painter.rect_filled(Rect::from_center_size(pos2(cx, top_left.y + h * 0.45), vec2(bar, h * 0.65)), 0, Color32::WHITE);
            for (y, width) in [(0.3, 0.5), (0.5, 0.7)] {
                let center = pos2(cx, top_left.y + h * y);
                painter.rect_filled(Rect::from_center_size(center, vec2(w * width, bar)), 0, Color32::WHITE);
            }
        }
        Language::Ukrainian => {
            painter.rect_filled(rect, 0, Color32::from_rgb(255, 215, 0));
            let top = Rect::from_min_size(rect.min, vec2(rect.width(), rect.height() / 2.0));
            painter.rect_filled(top, 0, Color32::from_rgb(0, 87, 183));
        }
        Language::Czech => {
            painter.rect_filled(rect, 0, Color32::from_rgb(215, 20, 26));
            let top = Rect::from_min_size(rect.min, vec2(rect.width(), rect.height() / 2.0));
            painter.rect_filled(top, 0, Color32::WHITE);
            let wedge = vec![rect.left_top(), pos2(rect.center().x, rect.center().y), rect.left_bottom()];
            painter.add(Shape::convex_polygon(wedge, Color32::from_rgb(17, 69, 126), Stroke::NONE));
        }
        Language::Portuguese => {
            // Green and red with a simplified armillary sphere (yellow ring) on the border.
            painter.rect_filled(rect, 0, Color32::from_rgb(255, 0, 0));
            let green = Rect::from_min_size(rect.min, vec2(rect.width() * 0.4, rect.height()));
            painter.rect_filled(green, 0, Color32::from_rgb(0, 102, 0));
            let center = pos2(green.right(), rect.center().y);
            painter.circle_filled(center, rect.height() * 0.27, Color32::from_rgb(255, 225, 0));
            painter.circle_filled(center, rect.height() * 0.15, Color32::WHITE);
        }
        Language::Spanish => {
            // Red, yellow (twice as high), red; without the coat of arms.
            painter.rect_filled(rect, 0, Color32::from_rgb(170, 21, 27));
            let yellow = Rect::from_center_size(rect.center(), vec2(rect.width(), rect.height() / 2.0));
            painter.rect_filled(yellow, 0, Color32::from_rgb(241, 191, 0));
        }
        Language::Bavarian => {
            // White and blue lozenges: blue diamonds on white, the gaps between them form the white ones.
            painter.rect_filled(rect, 0, Color32::WHITE);
            let blue = Color32::from_rgb(0, 152, 212);
            let (dx, dy) = (rect.width() / 5.0, rect.height() / 3.0);
            for row in 0..=3 {
                for col in 0..=5 {
                    let c = rect.left_top() + vec2(col as f32 * dx, row as f32 * dy);
                    let diamond = vec![
                        c + vec2(0.0, -dy / 2.0),
                        c + vec2(dx / 2.0, 0.0),
                        c + vec2(0.0, dy / 2.0),
                        c + vec2(-dx / 2.0, 0.0),
                    ];
                    painter.add(Shape::convex_polygon(diamond, blue, Stroke::NONE));
                }
            }
        }
        Language::Icelandic => nordic_cross(
            Color32::from_rgb(2, 82, 156),
            9.0 / 25.0,
            &[(4.0 / 18.0, Color32::WHITE), (2.0 / 18.0, Color32::from_rgb(220, 30, 53))],
        ),
        Language::Norwegian => nordic_cross(
            Color32::from_rgb(186, 12, 47),
            8.0 / 22.0,
            &[(4.0 / 16.0, Color32::WHITE), (2.0 / 16.0, Color32::from_rgb(0, 32, 91))],
        ),
        Language::Swedish => nordic_cross(
            Color32::from_rgb(0, 106, 167),
            6.0 / 16.0,
            &[(2.0 / 10.0, Color32::from_rgb(254, 204, 0))],
        ),
        Language::Danish => nordic_cross(Color32::from_rgb(200, 16, 46), 14.0 / 37.0, &[(4.0 / 28.0, Color32::WHITE)]),
        Language::Finnish => nordic_cross(Color32::WHITE, 6.5 / 18.0, &[(3.0 / 11.0, Color32::from_rgb(0, 47, 108))]),
        Language::Polish => {
            painter.rect_filled(rect, 0, Color32::from_rgb(220, 20, 60));
            painter.rect_filled(Rect::from_min_size(rect.min, vec2(rect.width(), rect.height() / 2.0)), 0, Color32::WHITE);
        }
        Language::Italian => stripes(
            [Color32::from_rgb(0, 146, 70), Color32::WHITE, Color32::from_rgb(206, 43, 55)],
            true,
        ),
        Language::Romanian => stripes(
            [Color32::from_rgb(0, 43, 127), Color32::from_rgb(252, 209, 22), Color32::from_rgb(206, 17, 38)],
            true,
        ),
        Language::Croatian => {
            let red = Color32::from_rgb(255, 0, 0);
            stripes([red, Color32::WHITE, Color32::from_rgb(23, 23, 150)], false);
            // Simplified coat of arms: red and white checkerboard.
            let n = 5;
            let cell = rect.height() * 0.5 / n as f32;
            let top_left = rect.center() - vec2(cell * n as f32 / 2.0, cell * n as f32 / 2.0);
            for row in 0..n {
                for col in 0..n {
                    let color = if (row + col) % 2 == 0 { red } else { Color32::WHITE };
                    let min = top_left + vec2(col as f32 * cell, row as f32 * cell);
                    painter.rect_filled(Rect::from_min_size(min, Vec2::splat(cell)), 0, color);
                }
            }
        }
        Language::Greek => {
            let blue = Color32::from_rgb(13, 94, 175);
            let stripe = rect.height() / 9.0;
            for i in 0..9 {
                let color = if i % 2 == 0 { blue } else { Color32::WHITE };
                let min = rect.left_top() + vec2(0.0, i as f32 * stripe);
                painter.rect_filled(Rect::from_min_size(min, vec2(rect.width(), stripe)), 0, color);
            }
            let canton = Rect::from_min_size(rect.min, Vec2::splat(5.0 * stripe));
            painter.rect_filled(canton, 0, blue);
            painter.rect_filled(Rect::from_center_size(canton.center(), vec2(canton.width(), stripe)), 0, Color32::WHITE);
            painter.rect_filled(Rect::from_center_size(canton.center(), vec2(stripe, canton.height())), 0, Color32::WHITE);
        }
        Language::AncientGreek => {
            // No country; black letters on terracotta, like an ancient vase.
            painter.rect_filled(rect, 0, Color32::from_rgb(196, 98, 45));
            painter.text(
                rect.center(),
                Align2::CENTER_CENTER,
                "ΑΒΓ",
                FontId::proportional(rect.height() * 0.55),
                Color32::BLACK,
            );
        }
        Language::Albanian => {
            // Red with a simplified black double-headed eagle.
            painter.rect_filled(rect, 0, Color32::from_rgb(228, 30, 32));
            let (c, h) = (rect.center(), rect.height());
            for side in [-1.0, 1.0] {
                let wing = vec![
                    c + vec2(0.0, -h * 0.05),
                    c + vec2(side * h * 0.38, -h * 0.3),
                    c + vec2(side * h * 0.3, h * 0.05),
                    c + vec2(0.0, h * 0.15),
                ];
                painter.add(Shape::convex_polygon(wing, Color32::BLACK, Stroke::NONE));
                painter.circle_filled(c + vec2(side * h * 0.08, -h * 0.28), h * 0.07, Color32::BLACK);
            }
            let body = vec![c + vec2(-h * 0.08, -h * 0.2), c + vec2(h * 0.08, -h * 0.2), c + vec2(0.0, h * 0.38)];
            painter.add(Shape::convex_polygon(body, Color32::BLACK, Stroke::NONE));
        }
        Language::Latin => {
            // Latin has no country; a Roman banner with "SPQR" instead.
            painter.rect_filled(rect, 0, Color32::from_rgb(140, 20, 30));
            painter.text(
                rect.center(),
                Align2::CENTER_CENTER,
                "SPQR",
                FontId::proportional(rect.height() * 0.45),
                Color32::from_rgb(240, 190, 50),
            );
        }
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
