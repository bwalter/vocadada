use crate::model::Project;
use rand::seq::SliceRandom;

#[derive(Clone, Copy, PartialEq, Eq)]
pub enum Direction {
    OneToTwo,
    TwoToOne,
}

#[derive(Clone)]
pub struct Card {
    pub question: String,
    pub answer: String,
}

pub struct Quiz {
    pub direction: Direction,
    pub question_lang: String,
    pub answer_lang: String,
    cards: Vec<Card>,
    remaining: Vec<usize>,
    missed: Vec<bool>,
    mistakes: usize,
    current: Option<usize>,
    pub revealed: bool,
    pub finished_at: Option<f64>,
}

impl Quiz {
    pub fn from_project(project: &Project, direction: Direction) -> Self {
        let cards = project
            .entries
            .iter()
            .filter(|e| e.is_complete())
            .map(|e| {
                let (q, a) = match direction {
                    Direction::OneToTwo => (&e.word1, &e.word2),
                    Direction::TwoToOne => (&e.word2, &e.word1),
                };
                Card {
                    question: q.trim().to_string(),
                    answer: a.trim().to_string(),
                }
            })
            .collect();
        let (question_lang, answer_lang) = match direction {
            Direction::OneToTwo => (project.lang1.clone(), project.lang2.clone()),
            Direction::TwoToOne => (project.lang2.clone(), project.lang1.clone()),
        };
        Self::new(direction, question_lang, answer_lang, cards)
    }

    /// A new quiz containing only the words that were missed or not reached.
    pub fn practice_quiz(&self) -> Self {
        Self::new(
            self.direction,
            self.question_lang.clone(),
            self.answer_lang.clone(),
            self.to_practice(),
        )
    }

    fn new(direction: Direction, question_lang: String, answer_lang: String, cards: Vec<Card>) -> Self {
        let mut quiz = Self {
            direction,
            question_lang,
            answer_lang,
            remaining: (0..cards.len()).collect(),
            missed: vec![false; cards.len()],
            mistakes: 0,
            cards,
            current: None,
            revealed: false,
            finished_at: None,
        };
        quiz.pick_next(None);
        quiz
    }

    pub fn total(&self) -> usize {
        self.cards.len()
    }

    pub fn known(&self) -> usize {
        self.cards.len() - self.remaining.len()
    }

    /// Number of "I did not know" answers, counting repeats of the same word.
    pub fn mistakes(&self) -> usize {
        self.mistakes
    }

    pub fn first_try(&self) -> usize {
        (0..self.cards.len())
            .filter(|i| !self.missed[*i] && !self.remaining.contains(i))
            .count()
    }

    pub fn all_known(&self) -> bool {
        self.remaining.is_empty()
    }

    pub fn is_finished(&self) -> bool {
        self.finished_at.is_some()
    }

    pub fn current(&self) -> Option<&Card> {
        self.current.map(|i| &self.cards[i])
    }

    pub fn to_practice(&self) -> Vec<Card> {
        (0..self.cards.len())
            .filter(|i| self.missed[*i] || self.remaining.contains(i))
            .map(|i| self.cards[i].clone())
            .collect()
    }

    /// 0 to 3 stars, based on how many words were known on the first try.
    pub fn stars(&self) -> usize {
        let score = self.first_try() as f32 / self.total().max(1) as f32;
        let stars = match score {
            s if s >= 0.9 => 3,
            s if s >= 0.6 => 2,
            s if s >= 0.3 => 1,
            _ => 0,
        };
        if self.all_known() {
            stars.max(1)
        } else {
            stars
        }
    }

    pub fn answer(&mut self, knew: bool, now: f64) {
        let Some(current) = self.current else { return };
        if knew {
            self.remaining.retain(|&i| i != current);
        } else {
            self.missed[current] = true;
            self.mistakes += 1;
        }
        self.revealed = false;
        if self.remaining.is_empty() {
            self.finish(now);
        } else {
            self.pick_next(Some(current));
        }
    }

    pub fn finish(&mut self, now: f64) {
        if self.finished_at.is_none() {
            self.finished_at = Some(now);
            self.current = None;
            self.revealed = false;
        }
    }

    fn pick_next(&mut self, previous: Option<usize>) {
        // Avoid asking the same word twice in a row when there is a choice.
        let candidates: Vec<usize> = self
            .remaining
            .iter()
            .copied()
            .filter(|&i| self.remaining.len() == 1 || Some(i) != previous)
            .collect();
        self.current = candidates.choose(&mut rand::thread_rng()).copied();
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::model::Entry;

    fn project() -> Project {
        let mut p = Project::new("Test".into());
        for (a, b) in [("dog", "chien"), ("cat", "chat"), ("", "vide")] {
            p.entries.push(Entry { word1: a.into(), word2: b.into() });
        }
        p
    }

    #[test]
    fn skips_incomplete_entries_and_tracks_progress() {
        let mut quiz = Quiz::from_project(&project(), Direction::OneToTwo);
        assert_eq!(quiz.total(), 2);

        quiz.answer(false, 0.0);
        assert_eq!(quiz.known(), 0);
        assert_eq!(quiz.mistakes(), 1);
        assert!(!quiz.is_finished());

        quiz.answer(true, 1.0);
        quiz.answer(true, 2.0);
        assert!(quiz.is_finished() && quiz.all_known());
        assert_eq!(quiz.first_try(), 1);
        assert_eq!(quiz.mistakes(), 1);
        assert_eq!(quiz.to_practice().len(), 1);
    }

    #[test]
    fn reverse_direction_swaps_question_and_answer() {
        let quiz = Quiz::from_project(&project(), Direction::TwoToOne);
        let card = quiz.current().unwrap();
        assert!(card.question == "chien" || card.question == "chat");
    }
}
