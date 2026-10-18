use eframe::egui::{
    self, vec2, Align, Align2, Color32, FontId, Key, Layout, Margin, Modifiers, RichText,
    ScrollArea, Sense, Stroke, TextEdit,
};
use rand::seq::SliceRandom;
use std::collections::HashSet;

use crate::i18n::{self, tr, Language};
use crate::model::{Entry, Library, Project};
use crate::quiz::{Direction, Quiz};
use crate::theme::{self, big_button, text_width, Confetti};

#[derive(Clone, Copy, PartialEq, Eq)]
enum Mode {
    Edit,
    View,
    Test,
}

fn tabs() -> [(Mode, String, Color32); 3] {
    [
        (Mode::Edit, tr!("tab-edit"), theme::ORANGE),
        (Mode::View, tr!("tab-view"), theme::BLUE),
        (Mode::Test, tr!("tab-test"), theme::GREEN),
    ]
}

/// Below this screen width (in points) the phone layout is used.
const NARROW_WIDTH: f32 = 700.0;

/// Widgets that should grab keyboard focus on the next frame they are shown.
#[derive(Clone, Copy, PartialEq, Eq)]
enum Focus {
    NewProject,
    Rename,
}

enum Answer {
    Knew,
    DidNotKnow,
    Finish,
}

enum ResultAction {
    Again,
    Practice,
    Back,
}

pub struct VocadadaApp {
    library: Library,
    dirty: bool,
    message: Option<String>,
    selected: Option<usize>,
    mode: Mode,
    new_project_name: Option<String>,
    rename_text: Option<String>,
    confirm_delete: bool,
    new_word1: String,
    new_word2: String,
    pending_focus: Option<Focus>,
    view_order: Vec<usize>,
    /// View mode: column (0 or 1) whose words are hidden.
    view_hidden: Option<usize>,
    /// View mode: entries whose hidden word is currently revealed.
    peeked: HashSet<usize>,
    quiz: Option<Quiz>,
    confetti: Confetti,
    narrow: bool,
    /// Phone layout only: show the project list instead of the selected project.
    show_projects: bool,
}

fn enter_pressed(ui: &egui::Ui, resp: &egui::Response) -> bool {
    resp.lost_focus() && ui.input(|i| i.key_pressed(Key::Enter))
}

fn focus_if(pending: &mut Option<Focus>, which: Focus, resp: &egui::Response) {
    if *pending == Some(which) {
        resp.request_focus();
        *pending = None;
    }
}

/// Adds space so that a row of `width` pixels ends up horizontally centered.
fn center_row(ui: &mut egui::Ui, width: f32) {
    let offset = (ui.available_width() - width) / 2.0 - ui.spacing().item_spacing.x;
    if offset > 0.0 {
        ui.add_space(offset);
    }
}

/// Big buttons side by side if they fit (or `stack` is false), otherwise full width below each other.
/// Returns the value of the clicked button.
fn button_row<T>(ui: &mut egui::Ui, buttons: Vec<(String, Color32, T)>, stack: bool, height: f32) -> Option<T> {
    let gap = 16.0;
    let n = buttons.len() as f32;
    let padding = 2.0 * ui.spacing().button_padding.x;
    let needed = buttons
        .iter()
        .map(|(label, _, _)| text_width(ui, label, 22.0) + padding)
        .fold(0.0, f32::max);
    let w = ((ui.available_width() - (n - 1.0) * gap) / n).min(250.0).max(needed);
    let mut clicked = None;
    if stack || n * w + (n - 1.0) * gap > ui.available_width() {
        let size = vec2(ui.available_width(), height);
        for (label, color, value) in buttons {
            if big_button(ui, &label, color, size).clicked() {
                clicked = Some(value);
            }
        }
    } else {
        ui.horizontal(|ui| {
            ui.spacing_mut().item_spacing.x = gap;
            center_row(ui, n * w + (n - 1.0) * gap);
            for (label, color, value) in buttons {
                if big_button(ui, &label, color, vec2(w, height)).clicked() {
                    clicked = Some(value);
                }
            }
        });
    }
    clicked
}

impl VocadadaApp {
    pub fn new(cc: &eframe::CreationContext<'_>) -> Self {
        theme::apply(&cc.egui_ctx);
        i18n::set_from_system();
        let (library, message) = match Library::load() {
            Ok(library) => (library, None),
            Err(e) => (Library::default(), Some(e)),
        };
        if let Some(language) = library.language.as_deref().and_then(Language::from_code) {
            i18n::set(language);
        }
        let selected = (!library.projects.is_empty()).then_some(0);
        Self {
            library,
            dirty: false,
            message,
            selected,
            mode: Mode::View,
            new_project_name: None,
            rename_text: None,
            confirm_delete: false,
            new_word1: String::new(),
            new_word2: String::new(),
            pending_focus: None,
            view_order: Vec::new(),
            view_hidden: None,
            peeked: HashSet::new(),
            quiz: None,
            confetti: Confetti::default(),
            narrow: false,
            show_projects: false,
        }
    }

    fn select(&mut self, index: usize) {
        self.show_projects = false;
        if self.selected == Some(index) {
            return;
        }
        self.selected = Some(index);
        self.quiz = None;
        self.view_order.clear();
        self.peeked.clear();
        self.new_word1.clear();
        self.new_word2.clear();
        self.rename_text = None;
        if self.library.projects[index].entries.is_empty() {
            self.mode = Mode::Edit;
        }
    }

    fn start_new_project(&mut self) {
        self.new_project_name = Some(String::new());
        self.pending_focus = Some(Focus::NewProject);
    }

    fn switch_mode(&mut self, mode: Mode) {
        // Coming back to Test always starts over, so words added in the meantime are included.
        if mode == Mode::Test && self.mode != Mode::Test {
            self.quiz = None;
        }
        self.mode = mode;
    }

    // ---------- Projects side panel ----------

    fn language_menu(&mut self, ui: &mut egui::Ui, rect: egui::Rect) {
        let current = i18n::current();
        let response = ui
            .allocate_rect(rect, Sense::click())
            .on_hover_text(tr!("language"))
            .on_hover_cursor(egui::CursorIcon::PointingHand);
        theme::paint_flag(ui.painter(), rect, current);
        if response.hovered() {
            ui.painter()
                .rect_stroke(rect.expand(2.0), 3, Stroke::new(2.0_f32, theme::PURPLE), egui::StrokeKind::Outside);
            theme::paint_dropdown_badge(ui.painter(), rect.right_bottom() - vec2(1.0, 1.0));
        }
        let popup_id = ui.make_persistent_id("language_menu");
        if response.clicked() {
            ui.memory_mut(|m| m.toggle_popup(popup_id));
        }
        egui::popup_below_widget(ui, popup_id, &response, egui::PopupCloseBehavior::CloseOnClick, |ui| {
            ui.set_min_width(170.0);
            for language in Language::ALL {
                if theme::language_row(ui, language, language == current).clicked() {
                    i18n::set(language);
                    self.library.language = Some(language.code().to_string());
                    self.dirty = true;
                }
            }
        });
    }

    fn projects_panel(&mut self, ctx: &egui::Context) {
        let narrow = self.narrow;
        let frame = egui::Frame::new().fill(theme::SIDE_BG).inner_margin(Margin::same(16));
        let contents = |ui: &mut egui::Ui| {
            ui.horizontal(|ui| {
                let flag_size = vec2(36.0, 24.0);
                let right = ui.max_rect().right();
                let title_width = ui.available_width() - flag_size.x - ui.spacing().item_spacing.x;
                let title = ui
                    .scope(|ui| {
                        ui.set_max_width(title_width);
                        let text = RichText::new("Vocadada").size(40.0).strong().color(theme::PURPLE);
                        ui.add(egui::Label::new(text).truncate())
                    })
                    .inner;
                // Centered on the title text rather than the row, so the two line up.
                let center = egui::pos2(right - flag_size.x / 2.0, title.rect.center().y);
                self.language_menu(ui, egui::Rect::from_center_size(center, flag_size));
            });
            ui.label(RichText::new(tr!("app-tagline")).color(theme::TEXT_SOFT));
            ui.add_space(4.0);
            ui.separator();
            ui.label(RichText::new(tr!("my-projects")).size(22.0).strong());

            egui::TopBottomPanel::bottom("project_actions")
                .frame(egui::Frame::new().inner_margin(Margin::symmetric(0, 8)))
                .show_separator_line(false)
                .show_inside(ui, |ui| self.project_actions(ui));

            ScrollArea::vertical()
                .auto_shrink([false; 2])
                .show(ui, |ui| self.project_list(ui));
        };
        if narrow {
            egui::CentralPanel::default().frame(frame).show(ctx, contents);
        } else {
            egui::SidePanel::left("projects")
                .resizable(false)
                .show_separator_line(false)
                .exact_width(260.0)
                .frame(frame)
                .show(ctx, contents);
        }
    }

    fn project_list(&mut self, ui: &mut egui::Ui) {
        if self.library.projects.is_empty() {
            ui.label(RichText::new(tr!("no-projects")).color(theme::TEXT_SOFT));
        }
        let mut clicked = None;
        for i in 0..self.library.projects.len() {
            let is_selected = self.selected == Some(i);
            if let (true, Some(text)) = (is_selected, &mut self.rename_text) {
                let resp = ui.add(
                    TextEdit::singleline(text)
                        .font(egui::TextStyle::Button)
                        .desired_width(f32::INFINITY),
                );
                focus_if(&mut self.pending_focus, Focus::Rename, &resp);
                if resp.lost_focus() {
                    let name = text.trim().to_string();
                    let cancelled = ui.input(|i| i.key_pressed(Key::Escape));
                    if !cancelled && !name.is_empty() {
                        self.library.projects[i].name = name;
                        self.dirty = true;
                    }
                    self.rename_text = None;
                }
                continue;
            }

            let project = &self.library.projects[i];
            let (fill, color) = if is_selected {
                (theme::PURPLE, Color32::WHITE)
            } else {
                (Color32::WHITE, theme::TEXT)
            };
            let button = egui::Button::new(RichText::new(&project.name).size(20.0).strong().color(color))
                .fill(fill)
                .corner_radius(12)
                .truncate()
                .min_size(vec2(ui.available_width(), 46.0));
            let resp = ui
                .add(button)
                .on_hover_text(tr!("word-count", count = project.entries.len()));
            if resp.clicked() {
                clicked = Some(i);
            }
        }
        if let Some(i) = clicked {
            self.select(i);
        }
    }

    fn project_actions(&mut self, ui: &mut egui::Ui) {
        if let Some(name) = &mut self.new_project_name {
            ui.label(RichText::new(tr!("new-project-name-label")).strong());
            let resp = ui.add(
                TextEdit::singleline(name)
                    .hint_text(tr!("new-project-name-hint"))
                    .desired_width(f32::INFINITY),
            );
            focus_if(&mut self.pending_focus, Focus::NewProject, &resp);
            let mut create = enter_pressed(ui, &resp);
            let width = ui.available_width();
            create |= big_button(ui, &tr!("create"), theme::GREEN, vec2(width, 40.0)).clicked();
            let cancel = ui
                .add(egui::Button::new(tr!("cancel")).min_size(vec2(width, 36.0)))
                .clicked();
            let name = name.trim().to_string();
            if cancel {
                self.new_project_name = None;
            } else if create && name.is_empty() {
                self.pending_focus = Some(Focus::NewProject);
            } else if create {
                self.library.projects.push(Project::new(name));
                self.new_project_name = None;
                self.dirty = true;
                self.select(self.library.projects.len() - 1);
                self.mode = Mode::Edit;
            }
            return;
        }

        let width = ui.available_width();
        if big_button(ui, &tr!("new-project"), theme::PINK, vec2(width, 46.0)).clicked() {
            self.start_new_project();
        }
        if let Some(i) = self.selected {
            let (rename, delete) = (tr!("rename"), tr!("delete"));
            let padding = 6.0;
            let small = |ui: &mut egui::Ui, text: &str| {
                ui.spacing_mut().button_padding.x = padding;
                let size = vec2(ui.available_width(), 38.0);
                ui.add(egui::Button::new(RichText::new(text).size(17.0)).truncate().min_size(size))
            };
            let half = (width - ui.spacing().item_spacing.x) / 2.0;
            let side_by_side = [&rename, &delete]
                .iter()
                .all(|text| text_width(ui, text, 17.0) + 2.0 * padding <= half);
            let (rename_clicked, delete_clicked) = if side_by_side {
                ui.columns(2, |cols| {
                    (small(&mut cols[0], &rename).clicked(), small(&mut cols[1], &delete).clicked())
                })
            } else {
                (small(ui, &rename).clicked(), small(ui, &delete).clicked())
            };
            if rename_clicked {
                self.rename_text = Some(self.library.projects[i].name.clone());
                self.pending_focus = Some(Focus::Rename);
            }
            if delete_clicked {
                self.confirm_delete = true;
            }
        }
    }

    fn delete_dialog(&mut self, ctx: &egui::Context) {
        let Some(index) = self.selected.filter(|_| self.confirm_delete) else {
            return;
        };
        let name = self.library.projects[index].name.clone();
        let mut delete = false;
        let modal = egui::Modal::new(egui::Id::new("confirm_delete")).show(ctx, |ui| {
            ui.set_width(420.0_f32.min(ctx.screen_rect().width() - 64.0));
            ui.label(RichText::new(tr!("delete-title")).size(28.0).strong().color(theme::RED));
            ui.label(tr!("delete-body", name = name.as_str()));
            ui.add_space(10.0);
            ui.horizontal_wrapped(|ui| {
                delete = big_button(ui, &tr!("delete-confirm"), theme::RED, vec2(180.0, 48.0)).clicked();
                if big_button(ui, &tr!("delete-keep"), theme::GREEN, vec2(180.0, 48.0)).clicked() {
                    self.confirm_delete = false;
                }
            });
        });
        if delete {
            self.library.projects.remove(index);
            self.dirty = true;
            self.quiz = None;
            self.view_order.clear();
            self.selected = if self.library.projects.is_empty() {
                None
            } else {
                Some(index.min(self.library.projects.len() - 1))
            };
        }
        if delete || modal.should_close() {
            self.confirm_delete = false;
        }
    }

    // ---------- Main area ----------

    fn welcome_ui(&mut self, ui: &mut egui::Ui) {
        ui.vertical_centered(|ui| {
            ui.add_space(ui.available_height() * 0.25);
            ui.label(RichText::new(tr!("welcome-title")).size(46.0).strong().color(theme::PURPLE));
            ui.add_space(8.0);
            ui.label(RichText::new(tr!("welcome-body")).size(22.0));
            ui.add_space(20.0);
            if big_button(ui, &tr!("new-project"), theme::PINK, vec2(260.0, 60.0)).clicked() {
                self.start_new_project();
            }
        });
    }

    fn project_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        let narrow = self.narrow;
        let tabs = tabs();
        let padding = 2.0 * ui.spacing().button_padding.x;
        let spacing = ui.spacing().item_spacing.x;
        let tabs_width: f32 = tabs
            .iter()
            .map(|(_, label, _)| (text_width(ui, label, 22.0) + padding).max(120.0) + spacing)
            .sum();
        // Keep the name next to the tabs only if it gets a reasonable amount of space.
        let one_row = !narrow && ui.available_width() - tabs_width >= 120.0;

        if one_row {
            ui.horizontal(|ui| {
                ui.with_layout(Layout::right_to_left(Align::Center), |ui| {
                    for (mode, label, color) in tabs.into_iter().rev() {
                        if theme::tab_button(ui, &label, color, self.mode == mode, vec2(120.0, 46.0), 22.0)
                            .clicked()
                        {
                            self.switch_mode(mode);
                        }
                    }
                    // Laid out after the tabs so a long name gets truncated instead of overlapping them.
                    ui.with_layout(Layout::left_to_right(Align::Center), |ui| {
                        let name = &self.library.projects[idx].name;
                        ui.add(
                            egui::Label::new(RichText::new(name).size(32.0).strong().color(theme::PURPLE))
                                .truncate(),
                        );
                    });
                });
            });
        } else {
            ui.horizontal(|ui| {
                if narrow {
                    let back = egui::Button::new(RichText::new("⬅").size(22.0)).min_size(vec2(46.0, 46.0));
                    if ui.add(back).clicked() {
                        self.show_projects = true;
                    }
                }
                let name = &self.library.projects[idx].name;
                let size = if narrow { 28.0 } else { 32.0 };
                ui.add(
                    egui::Label::new(RichText::new(name).size(size).strong().color(theme::PURPLE)).truncate(),
                );
            });
            ui.horizontal(|ui| {
                let max_font = if narrow { 18.0 } else { 22.0 };
                let w = (ui.available_width() - 2.0 * spacing) / 3.0;
                let widest = tabs.iter().map(|(_, label, _)| text_width(ui, label, max_font)).fold(1.0, f32::max);
                // Shrink the font if the longest label doesn't fit (e.g. German "Bearbeiten" on a phone).
                let font = (max_font * (w - padding) / widest).min(max_font);
                for (mode, label, color) in tabs {
                    if theme::tab_button(ui, &label, color, self.mode == mode, vec2(w, 44.0), font).clicked() {
                        self.switch_mode(mode);
                    }
                }
            });
        }
        ui.add_space(12.0);
        match self.mode {
            Mode::Edit => self.edit_ui(ui, idx),
            Mode::View => self.view_ui(ui, idx),
            Mode::Test => self.test_ui(ui, idx),
        }
    }

    // ---------- Edit ----------

    fn edit_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        let project = &mut self.library.projects[idx];
        let narrow = self.narrow;
        let mut dirty = false;

        theme::card().show(ui, |ui| {
            ui.set_width(ui.available_width());
            if narrow {
                ui.label(RichText::new(tr!("languages")).strong());
            }
            ui.horizontal_wrapped(|ui| {
                if !narrow {
                    ui.label(RichText::new(tr!("languages")).strong());
                    ui.add_space(8.0);
                }
                let field_w = if narrow { (ui.available_width() - 110.0) / 2.0 } else { 170.0 };
                ui.label(RichText::new("1:").color(theme::BLUE).strong());
                dirty |= ui
                    .add(
                        TextEdit::singleline(&mut project.lang1)
                            .hint_text(tr!("language-1-hint"))
                            .desired_width(field_w),
                    )
                    .changed();
                ui.add_space(12.0);
                ui.label(RichText::new("2:").color(theme::ORANGE).strong());
                dirty |= ui
                    .add(
                        TextEdit::singleline(&mut project.lang2)
                            .hint_text(tr!("language-2-hint"))
                            .desired_width(field_w),
                    )
                    .changed();
            });
        });
        ui.add_space(10.0);

        let col_w = ((ui.available_width() - 130.0) / 2.0).max(80.0);

        egui::TopBottomPanel::bottom(egui::Id::new("add_word_panel"))
            .frame(egui::Frame::new().inner_margin(Margin::symmetric(0, 10)))
            .show_separator_line(false)
            .show_inside(ui, |ui| {
                theme::card().show(ui, |ui| {
                    ui.set_width(ui.available_width());
                    ui.label(RichText::new(tr!("add-word-title")).size(22.0).strong().color(theme::ORANGE));
                    let field = |ui: &mut egui::Ui, text: &mut String, hint: &str, width: f32| {
                        ui.add(TextEdit::singleline(text).hint_text(hint).desired_width(width))
                    };
                    let add_label = tr!("add");
                    let (r1, r2, add_clicked) = if narrow {
                        let w = ui.available_width();
                        let r1 = field(ui, &mut self.new_word1, &project.lang1, w);
                        let r2 = field(ui, &mut self.new_word2, &project.lang2, w);
                        let add = big_button(ui, &add_label, theme::ORANGE, vec2(w, 44.0)).clicked();
                        (r1, r2, add)
                    } else {
                        ui.horizontal(|ui| {
                            let r1 = field(ui, &mut self.new_word1, &project.lang1, col_w - 30.0);
                            let r2 = field(ui, &mut self.new_word2, &project.lang2, col_w - 30.0);
                            let add = big_button(ui, &add_label, theme::ORANGE, vec2(90.0, 36.0)).clicked();
                            (r1, r2, add)
                        })
                        .inner
                    };
                    if enter_pressed(ui, &r1) {
                        r2.request_focus();
                    }
                    if add_clicked || enter_pressed(ui, &r2) {
                        let w1 = self.new_word1.trim();
                        let w2 = self.new_word2.trim();
                        if w1.is_empty() {
                            r1.request_focus();
                        } else if w2.is_empty() {
                            r2.request_focus();
                        } else {
                            project.entries.push(Entry {
                                word1: w1.to_string(),
                                word2: w2.to_string(),
                            });
                            self.new_word1.clear();
                            self.new_word2.clear();
                            dirty = true;
                            r1.request_focus();
                        }
                    }
                    ui.label(
                        RichText::new(tr!("add-word-tip"))
                            .small()
                            .color(theme::TEXT_SOFT),
                    );
                });
            });

        if project.entries.is_empty() {
            ui.vertical_centered(|ui| {
                ui.add_space(30.0);
                ui.label(
                    RichText::new(tr!("no-words-edit"))
                        .size(24.0)
                        .color(theme::TEXT_SOFT),
                );
            });
        } else {
            let mut remove = None;
            ScrollArea::vertical().auto_shrink([false; 2]).show(ui, |ui| {
                egui::Grid::new("word_grid")
                    .num_columns(4)
                    .striped(true)
                    .spacing(vec2(10.0, 8.0))
                    .show(ui, |ui| {
                        ui.label("");
                        ui.label(RichText::new(&project.lang1).size(22.0).strong().color(theme::BLUE));
                        ui.label(RichText::new(&project.lang2).size(22.0).strong().color(theme::ORANGE));
                        ui.label("");
                        ui.end_row();
                        for (i, entry) in project.entries.iter_mut().enumerate() {
                            ui.label(RichText::new(format!("{}.", i + 1)).color(theme::TEXT_SOFT));
                            // Grid cells clamp `desired_width` to the previous column width; `min_size` isn't clamped.
                            let size = vec2(col_w, 0.0);
                            dirty |= ui.add(TextEdit::singleline(&mut entry.word1).min_size(size)).changed();
                            dirty |= ui.add(TextEdit::singleline(&mut entry.word2).min_size(size)).changed();
                            if ui.button("🗑").on_hover_text(tr!("remove-word")).clicked() {
                                remove = Some(i);
                            }
                            ui.end_row();
                        }
                    });
            });
            if let Some(i) = remove {
                project.entries.remove(i);
                dirty = true;
            }
        }

        self.dirty |= dirty;
    }

    // ---------- View ----------

    fn view_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        let project = &self.library.projects[idx];
        let n = project.entries.len();
        if self.view_order.len() != n {
            self.view_order = (0..n).collect();
        }
        let visible: Vec<usize> = self
            .view_order
            .iter()
            .copied()
            .filter(|&i| !project.entries[i].is_blank())
            .collect();

        if visible.is_empty() {
            ui.vertical_centered(|ui| {
                ui.add_space(40.0);
                ui.label(
                    RichText::new(tr!("no-words-view"))
                        .size(24.0)
                        .color(theme::TEXT_SOFT),
                );
            });
            return;
        }

        ui.horizontal_wrapped(|ui| {
            if big_button(ui, &tr!("shuffle"), theme::BLUE, vec2(160.0, 44.0)).clicked() {
                self.view_order.shuffle(&mut rand::thread_rng());
            }
            if ui
                .add(egui::Button::new(tr!("original-order")).min_size(vec2(0.0, 44.0)))
                .clicked()
            {
                self.view_order.sort_unstable();
            }
            let count = RichText::new(tr!("word-count", count = visible.len())).color(theme::TEXT_SOFT);
            ui.add(egui::Label::new(count).extend());
        });
        ui.horizontal_wrapped(|ui| {
            ui.label(RichText::new(tr!("hide")).strong());
            for (col, lang, color) in [(0, &project.lang1, theme::BLUE), (1, &project.lang2, theme::ORANGE)] {
                let active = self.view_hidden == Some(col);
                if theme::tab_button(ui, lang, color, active, vec2(0.0, 40.0), 18.0).clicked() {
                    self.view_hidden = (!active).then_some(col);
                    self.peeked.clear();
                }
            }
        });
        ui.add_space(8.0);

        egui::Frame::new()
            .inner_margin(Margin::symmetric(18, 0))
            .show(ui, |ui| {
                ui.columns(2, |cols| {
                    cols[0].label(RichText::new(&project.lang1).size(22.0).strong().color(theme::BLUE));
                    cols[1].label(RichText::new(&project.lang2).size(22.0).strong().color(theme::ORANGE));
                });
            });

        let mut toggle_peek = None;
        ScrollArea::vertical().auto_shrink([false; 2]).show(ui, |ui| {
            for i in visible {
                let entry = &project.entries[i];
                let peeked = self.peeked.contains(&i);
                theme::card()
                    .inner_margin(Margin::symmetric(18, 12))
                    .show(ui, |ui| {
                        let words = [
                            (&entry.word1, theme::BLUE, theme::BLUE_DARK),
                            (&entry.word2, theme::ORANGE, theme::ORANGE_DARK),
                        ];
                        ui.columns(2, |cols| {
                            for (col, (ui, (word, color, dark))) in cols.iter_mut().zip(words).enumerate() {
                                let hidden = self.view_hidden == Some(col);
                                let clicked = if hidden && !peeked {
                                    theme::hidden_word(ui, color).clicked()
                                } else {
                                    let label = egui::Label::new(RichText::new(word).size(26.0).color(dark));
                                    ui.add(label.sense(Sense::click())).clicked()
                                };
                                if hidden && clicked {
                                    toggle_peek = Some(i);
                                }
                            }
                        });
                    });
                ui.add_space(2.0);
            }
        });
        if let Some(i) = toggle_peek {
            if !self.peeked.remove(&i) {
                self.peeked.insert(i);
            }
        }
    }

    // ---------- Test ----------

    fn test_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        match &self.quiz {
            None => self.test_setup_ui(ui, idx),
            Some(quiz) if quiz.is_finished() => self.results_ui(ui, idx),
            Some(_) => self.quiz_ui(ui),
        }
    }

    fn test_setup_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        let project = &self.library.projects[idx];
        let count = project.entries.iter().filter(|e| e.is_complete()).count();
        let mut start = None;
        ui.vertical_centered(|ui| {
            ui.add_space(30.0);
            if count == 0 {
                ui.label(
                    RichText::new(tr!("no-words-test"))
                        .size(24.0)
                        .color(theme::TEXT_SOFT),
                );
                return;
            }
            ui.label(RichText::new(tr!("test-direction-question")).size(32.0).strong());
            ui.label(
                RichText::new(tr!("words-waiting", count = count))
                    .size(22.0)
                    .color(theme::TEXT_SOFT),
            );
            ui.add_space(24.0);
            let size = vec2(420.0_f32.min(ui.available_width()), 76.0);
            let forward = format!("{}  ➡  {}", project.lang1, project.lang2);
            if big_button(ui, &forward, theme::BLUE, size).clicked() {
                start = Some(Direction::OneToTwo);
            }
            ui.add_space(8.0);
            let backward = format!("{}  ➡  {}", project.lang2, project.lang1);
            if big_button(ui, &backward, theme::ORANGE, size).clicked() {
                start = Some(Direction::TwoToOne);
            }
        });
        if let Some(direction) = start {
            self.quiz = Some(Quiz::from_project(project, direction));
        }
    }

    fn quiz_ui(&mut self, ui: &mut egui::Ui) {
        // Consume Space/Enter so they can't also "click" a focused button.
        let (space, now) = ui.input_mut(|i| {
            let space = i.consume_key(Modifiers::NONE, Key::Space);
            i.consume_key(Modifiers::NONE, Key::Enter);
            (space, i.time)
        });
        let narrow = self.narrow;
        let Some(quiz) = self.quiz.as_mut() else { return };
        let Some(card) = quiz.current().cloned() else { return };

        theme::score_bar(ui, quiz.known(), quiz.total(), quiz.mistakes());
        ui.add_space(16.0);

        let mut answer = None;
        ScrollArea::vertical().auto_shrink([false; 2]).show(ui, |ui| ui.vertical_centered(|ui| {
            theme::card().show(ui, |ui| {
                ui.set_width(ui.available_width());
                ui.set_min_height(if narrow { 120.0 } else { 180.0 });
                ui.vertical_centered(|ui| {
                    ui.label(
                        RichText::new(format!("{}  ➡  {}", quiz.question_lang, quiz.answer_lang))
                            .size(18.0)
                            .color(theme::TEXT_SOFT),
                    );
                    ui.add_space(24.0);
                    ui.add(
                        egui::Label::new(RichText::new(&card.question).size(56.0).strong().color(theme::PURPLE))
                            .wrap(),
                    );
                });
            });
            ui.add_space(20.0);

            if !quiz.revealed {
                let size = vec2(460.0_f32.min(ui.available_width()), 72.0);
                let clicked = big_button(ui, &tr!("check-answer"), theme::PURPLE, size).clicked();
                if clicked || space {
                    quiz.revealed = true;
                }
                return;
            }

            egui::Frame::new()
                .fill(theme::PALE_GREEN)
                .stroke(Stroke::new(2.0_f32, theme::GREEN))
                .corner_radius(18)
                .inner_margin(Margin::same(16))
                .show(ui, |ui| {
                    ui.set_width(ui.available_width());
                    ui.vertical_centered(|ui| {
                        ui.label(RichText::new(tr!("the-answer-is")).size(18.0).color(theme::GREEN_DARK));
                        ui.add(
                            egui::Label::new(
                                RichText::new(&card.answer).size(46.0).strong().color(theme::GREEN_DARK),
                            )
                            .wrap(),
                        );
                    });
                });
            ui.add_space(20.0);

            let buttons = vec![
                (tr!("answer-knew"), theme::GREEN, Answer::Knew),
                (tr!("answer-did-not-know"), theme::RED, Answer::DidNotKnow),
                (tr!("finish"), theme::GRAY, Answer::Finish),
            ];
            answer = button_row(ui, buttons, narrow, 62.0);
        }));

        match answer {
            Some(Answer::Knew) => quiz.answer(true, now),
            Some(Answer::DidNotKnow) => quiz.answer(false, now),
            Some(Answer::Finish) => quiz.finish(now),
            None => return,
        }
        if quiz.is_finished() && quiz.all_known() {
            self.confetti.burst(ui.ctx().screen_rect());
        }
    }

    fn results_ui(&mut self, ui: &mut egui::Ui, idx: usize) {
        let narrow = self.narrow;
        let Some(quiz) = self.quiz.as_ref() else { return };
        let now = ui.input(|i| i.time);
        let t = (now - quiz.finished_at.unwrap_or(now)) as f32;
        let (known, total, first_try, stars) = (quiz.known(), quiz.total(), quiz.first_try(), quiz.stars());
        let mistakes = quiz.mistakes();
        let frac = known as f32 / total.max(1) as f32;
        let to_practice = quiz.to_practice();

        theme::score_bar(ui, known, total, mistakes);
        ui.add_space(10.0);

        let mut action = None;
        ScrollArea::vertical().auto_shrink([false; 2]).show(ui, |ui| {
            ui.vertical_centered(|ui| {
                let (title, color) = if quiz.all_known() && stars == 3 {
                    (tr!("result-perfect"), theme::GOLD_DARK)
                } else if quiz.all_known() {
                    (tr!("result-all-known"), theme::GREEN_DARK)
                } else if frac >= 0.5 {
                    (tr!("result-good"), theme::BLUE)
                } else {
                    (tr!("result-start"), theme::PURPLE)
                };
                let pulse = if quiz.all_known() && t < 6.0 {
                    1.0 + 0.05 * (t * 5.0).sin()
                } else {
                    1.0
                };
                ui.label(RichText::new(title).size(40.0 * pulse).strong().color(color));
                ui.add_space(8.0);

                // Ring chart with the share of known words.
                let (rect, _) = ui.allocate_exact_size(vec2(220.0, 220.0), Sense::hover());
                let shown = frac * theme::back_out((t / 1.2).clamp(0.0, 1.0)).min(1.0);
                let ring_color = if quiz.all_known() { theme::GREEN } else { theme::BLUE };
                let painter = ui.painter().clone();
                theme::paint_ring(&painter, rect.center(), 90.0, shown, ring_color, 22.0);
                painter.text(
                    rect.center() - vec2(0.0, 12.0),
                    Align2::CENTER_CENTER,
                    format!("{:.0}%", shown * 100.0),
                    FontId::proportional(46.0),
                    theme::TEXT,
                );
                painter.text(
                    rect.center() + vec2(0.0, 30.0),
                    Align2::CENTER_CENTER,
                    tr!("known-of-total", known = known, total = total),
                    FontId::proportional(20.0),
                    theme::TEXT_SOFT,
                );

                // Stars pop in one after another.
                let (rect, _) = ui.allocate_exact_size(vec2(270.0, 84.0), Sense::hover());
                for i in 0..3 {
                    let center = egui::pos2(rect.left() + 45.0 + i as f32 * 90.0, rect.center().y);
                    theme::paint_star(&painter, center, 36.0, theme::LIGHT_GRAY);
                    if i < stars {
                        let p = ((t - 1.0 - i as f32 * 0.35) / 0.4).clamp(0.0, 1.0);
                        if p > 0.0 {
                            theme::paint_star(&painter, center, 36.0 * theme::back_out(p), theme::GOLD);
                        }
                    }
                }
                ui.add_space(8.0);

                let first_try_text = tr!("first-try", count = first_try, total = total);
                ui.label(RichText::new(first_try_text).size(22.0));
                let color = if mistakes == 0 { theme::GREEN_DARK } else { theme::RED };
                let mistakes_text = tr!("mistakes-count", count = mistakes);
                ui.label(RichText::new(mistakes_text).size(22.0).strong().color(color));
                ui.add_space(12.0);

                if !to_practice.is_empty() {
                    theme::card().show(ui, |ui| {
                        ui.set_width(ui.available_width().min(560.0));
                        ui.label(
                            RichText::new(tr!("words-to-practise"))
                                .size(22.0)
                                .strong()
                                .color(theme::ORANGE_DARK),
                        );
                        for card in &to_practice {
                            ui.label(format!("{}  ➡  {}", card.question, card.answer));
                        }
                    });
                    ui.add_space(16.0);
                }

                let mut buttons = vec![(tr!("play-again"), theme::GREEN, ResultAction::Again)];
                if !to_practice.is_empty() {
                    buttons.push((tr!("practise-hard-words"), theme::ORANGE, ResultAction::Practice));
                }
                buttons.push((tr!("back"), theme::PURPLE, ResultAction::Back));
                action = button_row(ui, buttons, narrow, 58.0);
                ui.add_space(20.0);
            });
        });

        if t < 6.0 {
            ui.ctx().request_repaint();
        }

        match action {
            Some(ResultAction::Again) => {
                let quiz = Quiz::from_project(&self.library.projects[idx], quiz.direction);
                self.quiz = (quiz.total() > 0).then_some(quiz);
            }
            Some(ResultAction::Practice) => self.quiz = Some(quiz.practice_quiz()),
            Some(ResultAction::Back) => self.quiz = None,
            None => {}
        }
    }
}

impl eframe::App for VocadadaApp {
    fn update(&mut self, ctx: &egui::Context, _frame: &mut eframe::Frame) {
        self.narrow = ctx.screen_rect().width() < NARROW_WIDTH;
        let list_only = self.narrow && (self.show_projects || self.selected.is_none());

        if let Some(message) = self.message.clone() {
            egui::TopBottomPanel::bottom("message")
                .frame(egui::Frame::new().fill(theme::RED).inner_margin(Margin::same(10)))
                .show(ctx, |ui| {
                    ui.horizontal_wrapped(|ui| {
                        ui.label(RichText::new(message).color(Color32::WHITE));
                        if ui.button(tr!("ok")).clicked() {
                            self.message = None;
                        }
                    });
                });
        }

        if !self.narrow || list_only {
            self.projects_panel(ctx);
        }

        if !list_only {
            let margin = if self.narrow { 12 } else { 20 };
            egui::CentralPanel::default()
                .frame(egui::Frame::new().fill(theme::BG).inner_margin(Margin::same(margin)))
                .show(ctx, |ui| match self.selected {
                    Some(idx) => self.project_ui(ui, idx),
                    None => self.welcome_ui(ui),
                });
        }

        self.delete_dialog(ctx);
        self.confetti.show(ctx);

        if self.dirty {
            self.dirty = false;
            if let Err(e) = self.library.save() {
                self.message = Some(tr!("error-save", error = e));
            }
        }
    }
}
