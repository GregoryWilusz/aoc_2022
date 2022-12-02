# frozen_string_literal: true

# Rock (A) defeats Scissors (C-Z),
# Scissors (C) defeats Paper (B-Y),
# and Paper (B) defeats Rock (A-X).
# X for Rock (A), Y for Paper (B), and Z for Scissors (C)
ROUND_RESULT = {
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

SHAPE_RESULT = {
  'X' => 1,
  'Y' => 2,
  'Z' => 3
}.freeze

def total_score(encrypted_rounds_with_opponents_choices)
  encrypted_rounds_with_opponents_choices
    .split(/\n/)
    .map { |pair| [ROUND_RESULT[pair], SHAPE_RESULT[pair[-1]]].sum }
    .sum
end

encrypted_rounds_with_opponents_choices = File.read('./day_2/encrypted_strategy_guide.txt')
p total_score(encrypted_rounds_with_opponents_choices)
