# frozen_string_literal: true

ROUND_OUTCOME_RULES = {
  'A X' => { outcome: 3, shape_score: 1 },
  'B X' => { outcome: 0, shape_score: 1 },
  'C X' => { outcome: 6, shape_score: 1 },
  'A Y' => { outcome: 6, shape_score: 2 },
  'B Y' => { outcome: 3, shape_score: 2 },
  'C Y' => { outcome: 0, shape_score: 2 },
  'A Z' => { outcome: 0, shape_score: 3 },
  'B Z' => { outcome: 6, shape_score: 3 },
  'C Z' => { outcome: 3, shape_score: 3 }
}.freeze

NEW_ROUND_OUTCOME_RULES = {
  'A X' => { outcome: 0, shape_score: 3 },
  'B X' => { outcome: 0, shape_score: 1 },
  'C X' => { outcome: 0, shape_score: 2 },
  'A Y' => { outcome: 3, shape_score: 1 },
  'B Y' => { outcome: 3, shape_score: 2 },
  'C Y' => { outcome: 3, shape_score: 3 },
  'A Z' => { outcome: 6, shape_score: 2 },
  'B Z' => { outcome: 6, shape_score: 3 },
  'C Z' => { outcome: 6, shape_score: 1 }
}.freeze

def total_score(encrypted_rounds_with_opponents_choices)
  encrypted_rounds_with_opponents_choices
    .split(/\n/)
    .tally
    .map { |sequence, occurrences| ROUND_OUTCOME_RULES[sequence].values.sum * occurrences }
    .sum
end

def total_score_with_new_rule(encrypted_rounds_with_opponents_choices)
  encrypted_rounds_with_opponents_choices
    .split(/\n/)
    .tally
    .map { |sequence, occurrences| NEW_ROUND_OUTCOME_RULES[sequence].values.sum * occurrences }
    .sum
end

encrypted_rounds_with_opponents_choices = File.read('./day_2/encrypted_strategy_guide.txt')
p "[Day 2][Part 1]: #{total_score(encrypted_rounds_with_opponents_choices)}"
p "[Day 2][Part 2]: #{total_score_with_new_rule(encrypted_rounds_with_opponents_choices)}"
