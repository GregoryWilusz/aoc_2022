# frozen_string_literal: true

def max_total_calories(elves_items_calories_string)
  elves_items_calories_string.split(/\n/)
                             .slice_before('')
                             .map { |array| array[1..].map(&:to_i).inject(:+) }
                             .max
end

elves_items_calories_string = File.read('./day_1/elves_calories_items_list.txt')
max_total_calories(elves_items_calories_string)
