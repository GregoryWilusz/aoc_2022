# frozen_string_literal: true

require_relative '../../day_2/day_2'

RSpec.describe 'Rock Paper Scissors' do
  let(:example_strategy_guide) { "A Y\nB X\nC Z" }

  describe 'Total Score According To The Guide' do
    it 'calculates score according to the strategy guide' do
      expect(total_score(example_strategy_guide)).to eq 15
    end
  end
end
