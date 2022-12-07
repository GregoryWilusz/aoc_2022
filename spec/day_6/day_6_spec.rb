# frozen_string_literal: true

require_relative '../../day_6/day_6'

RSpec.describe 'Tuning Trouble' do
  let(:datastream1) { 'mjqjpqmgbljsphdztnvjfqwrcgsmlb' }
  let(:datastream2) { 'bvwbjplbgvbhsrlpgdmjqwftvncz' }
  let(:datastream3) { 'nppdvjthqldpwncqszvftbrmjlhg' }
  let(:datastream4) { 'nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg' }
  let(:datastream5) { 'zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw' }

  describe 'Returns The Number Of Characters The First Start-of-packet Marker Is Detected' do
    it 'returns the number of characters the first start-of-packet marker is detected', :aggregate_failures do
      expect(calculate_marker_position(datastream1)).to eq 7
      expect(calculate_marker_position(datastream2)).to eq 5
      expect(calculate_marker_position(datastream3)).to eq 6
      expect(calculate_marker_position(datastream4)).to eq 10
      expect(calculate_marker_position(datastream5)).to eq 11
    end
  end

  describe 'Returns The Number Of Characters The First Start-of-message Marker Is Detected' do
    it 'returns the number of characters the first start-of-message marker is detected', :aggregate_failures do
      expect(calculate_message_marker_position(datastream1)).to eq 19
      expect(calculate_message_marker_position(datastream2)).to eq 23
      expect(calculate_message_marker_position(datastream3)).to eq 23
      expect(calculate_message_marker_position(datastream4)).to eq 29
      expect(calculate_message_marker_position(datastream5)).to eq 26
    end
  end
end
