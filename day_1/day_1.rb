# frozen_string_literal: true

def total_calories(elves_items_calories_string)
  elves_items_calories_string.split(/\n/)
                             .map(&:to_i)
                             .slice_before(&:zero?)
                             .map { |array| array.sum }
end

def max_total_calories(elves_items_calories_string)
  total_calories(elves_items_calories_string).max
end

def total_calories_of_top_three_elves(elves_items_calories_string)
  total_calories(elves_items_calories_string).sort.last(3).sum
end

elves_items_calories_string = File.read('./day_1/elves_calories_items_list.txt')
p max_total_calories(elves_items_calories_string)
p total_calories_of_top_three_elves(elves_items_calories_string)
