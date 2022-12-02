# frozen_string_literal: true

# Rock (A) defeats Scissors (C),
# Scissors (C) defeats Paper (B),
# and Paper (B) defeats Rock (A).

THE_SECOND_COLUMN_MAPPING = {
  'X' => 'A', # Rock: 1
  'Y' => 'B', # Paper: 2
  'Z' => 'C'  # Scissors: 3
}.freeze

ROUND_RESULT = {
  'A A' => 3,
  'A B' => 0,
  'A C' => 6,
  'B A' => 6,
  'B B' => 3,
  'B C' => 0,
  'C A' => 0,
  'C B' => 6,
  'C C' => 3
}.freeze

SHAPE_RESULT = {
  'A' => 1,
  'B' => 2,
  'C' => 3
}.freeze

def total_score(encrypted_rounds_with_opponents_choices)
  encrypted_rounds_with_opponents_choices
    .split(/\n/)
    .map { |pair| [THE_SECOND_COLUMN_MAPPING[pair[-1]], pair[0]] }
    .map { |pair| [SHAPE_RESULT[pair.first], ROUND_RESULT["#{pair.first} #{pair.last}"]].sum }
    .sum
end

encrypted_rounds_with_opponents_choices = File.read('./day_2/encrypted_strategy_guide.txt')
p total_score(encrypted_rounds_with_opponents_choices)
