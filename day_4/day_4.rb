# frozen_string_literal: true

def sum_pairs(list)
  list
    .split(/\n/)
    .map { |pairs| pairs.gsub(/-|,/, ',').split(',').map(&:to_i) }
    .map { |sections| [sections[0]..sections[1], sections[2]..sections[3]].sort_by(&:size).reverse }
    .map { |sections| sections.first.cover?(sections.last) ? 1 : 0 }
    .sum
end

section_assignments_pairs = File.read('./day_4/section_assignments_pairs.txt')
p "[Day 4][Part 1]: #{sum_pairs(section_assignments_pairs)}"
