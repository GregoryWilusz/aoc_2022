# frozen_string_literal: true

require_relative '../../day_4/day_4'

RSpec.describe 'Camp Cleanup' do
  let(:example_list_of_section_assignments_pairs) { "2-4,6-8\n2-3,4-5\n5-7,7-9\n2-8,3-7\n6-6,4-6\n2-6,4-8" }

  describe 'Sum Up Of Assignment Pairs With One Range Fully Containing The Other' do
    it 'calculates the sum of sections with one range fully containing the other ' do
      expect(sum_pairs(example_list_of_section_assignments_pairs)).to eq 2
    end
  end
end
