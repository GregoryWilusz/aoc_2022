# frozen_string_literal: true

ROUND_OUTCOME = {
  'A X' => 3,
  'B X' => 0,
  'C X' => 6,
  'A Y' => 6,
  'B Y' => 3,
  'C Y' => 0,
  'A Z' => 0,
  'B Z' => 6,
  'C Z' => 3
}.freeze

SHAPE_SCORE = {
  'X' => 1,
  'Y' => 2,
  'Z' => 3
}.freeze

def total_score(encrypted_rounds_with_opponents_choices)
  encrypted_rounds_with_opponents_choices
    .split(/\n/)
    .tally
    .map { |sequence, occurrences| (ROUND_OUTCOME[sequence] + SHAPE_SCORE[sequence[-1]]) * occurrences }
    .sum
end

encrypted_rounds_with_opponents_choices = File.read('./day_2/encrypted_strategy_guide.txt')
p total_score(encrypted_rounds_with_opponents_choices)
