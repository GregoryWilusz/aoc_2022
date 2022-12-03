# frozen_string_literal: true

def sum_priorities(list)
  list
    .split(/\n/)
    .map { |rucksack_items| rucksack_items.chars.each_slice(rucksack_items.size / 2).to_a }
    .map { |rucksack_items| (rucksack_items.first & rucksack_items.last) }.flatten
    .map { |duplicated_item| priorities[duplicated_item] }
    .sum
end

def priorities
  Hash[
    (('a'..'z').to_a + ('A'..'Z').to_a)
    .map
    .with_index { |element, index| [element, index + 1] }
  ]
end

all_items = File.read('./day_3/list_of_all_items_in_rucksacks.txt')
p sum_priorities(all_items)
