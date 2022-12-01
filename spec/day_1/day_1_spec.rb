# frozen_string_literal: true

require_relative '../../day_1/day_1'

RSpec.describe 'Max Total Calories' do
  let(:example_elves_items_calories) { "1000\n2000\n3000\n\n4000\n\n5000\n6000\n\n7000\n8000\n9000\n\n10000" }

  describe 'Max Total Calories Of The Single Elf' do
    it 'calculates max total calories carried by a single Elf' do
      expect(max_total_calories(example_elves_items_calories)).to eq 24_000
    end
  end

  describe 'Max Total Calories Of The Top Three Elves' do
    it 'calculates max total calories carried by three Elves' do
      expect(total_calories_of_top_three_elves(example_elves_items_calories)).to eq 45_000
    end
  end
end
