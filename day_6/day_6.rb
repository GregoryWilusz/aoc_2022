# frozen_string_literal: true

def calculate_marker_position(datastream)
  datastream.chars.each_cons(4).with_index { |sequence, index| return index + 4 if sequence.uniq.size == 4 }
end

def calculate_message_marker_position(datastream)
  datastream.chars.each_cons(14).with_index { |sequence, index| return index + 14 if sequence.uniq.size == 14 }
end

datastream_buffer = File.read('./day_6/datastream.txt')
p "[Day 6][Part 1]: #{calculate_marker_position(datastream_buffer)}"
p "[Day 6][Part 2]: #{calculate_message_marker_position(datastream_buffer)}"
