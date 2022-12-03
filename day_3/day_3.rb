# frozen_string_literal: true

def sum_priorities(list)
  list
    .split(/\n/)
    .map { |rucksack_items| rucksack_items.chars.each_slice(rucksack_items.size / 2).to_a }
    .map { |rucksack_items| (rucksack_items.first & rucksack_items.last) }.flatten
    .map { |duplicated_item| priorities[duplicated_item] }
    .sum
end

def sum_priorities_considering_badges(list)
  list
    .split(/\n/)
    .map(&:chars).each_slice(3).to_a
    .map { |group| (group[0] & group[1] & group[2]) }.flatten
    .map { |duplicated_item| priorities[duplicated_item] }
    .sum
end

def priorities
  (('a'..'z').to_a + ('A'..'Z').to_a)
    .map
    .with_index { |element, index| [element, index + 1] }
    .to_h
end

all_items = File.read('./day_3/list_of_all_items_in_rucksacks.txt')
p "[Day 3][Part 1]: #{sum_priorities(all_items)}"
p "[Day 3][Part 2]: #{sum_priorities_considering_badges(all_items)}"
