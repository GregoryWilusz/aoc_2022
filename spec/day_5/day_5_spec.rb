# frozen_string_literal: true

require_relative '../../day_5/day_5'

RSpec.describe 'Supply Stacks' do
  let(:example_drawing) { File.read('./spec/day_5/example_drawing.txt') }

  describe 'Returns The Sequence Of The Top Crates Of Each Stack' do
    it 'returns the sequence of the top crates of each stack' do
      expect(rearrange_crates(example_drawing)).to eq 'CMZ'
    end
  end

  describe 'Returns The Sequence Of The Top Crates Of Each Stack Moving Multiple Crates At Once' do
    it 'returns the sequence of the top crates of each stack moving multiple crates at once' do
      expect(rearrange_crates_moving_multiple_at_once(example_drawing)).to eq 'MCD'
    end
  end
end
