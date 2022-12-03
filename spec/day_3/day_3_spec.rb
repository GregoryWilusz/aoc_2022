# frozen_string_literal: true

require_relative '../../day_3/day_3'

RSpec.describe 'Rucksack Reorganization' do
  let(:example_list_of_contents_of_six_rucksacks) do
    "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\n" \
      "PmmdzqPrVvPwwTWBwg\nwMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\n" \
      "ttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
  end

  describe 'Sum Of Priorities Of All Item Types' do
    it 'calculates the sum of priorities' do
      expect(sum_priorities(example_list_of_contents_of_six_rucksacks)).to eq 157
    end
  end
end
