# frozen_string_literal: true

def rearrange_crates(drawing)
  highest_stack_level = drawing.partition("\n\n").first.split(/\n/).size

  stacks = drawing
           .lines
           .take(highest_stack_level)
           .map { |level| level.chars.each_slice(4).to_a.map { |string_with_stack| string_with_stack[1] } }
           .transpose
           .map(&:reverse)
           .to_h { |stack| [stack[0].to_i, stack[1..].join.strip.chars] }

  procedures = drawing
               .lines
               .drop(highest_stack_level + 1)
               .map { |line| line.scan(/\d+/).map(&:to_i) }

  procedures.each do |procedure|
    from = stacks[procedure[1]]
    destination = stacks[procedure[2]]

    cargo = from.pop(procedure[0])
    destination.push(cargo.reverse).flatten!
  end

  stacks.values.map(&:last).join
end

def rearrange_crates_moving_multiple_at_once(drawing)
  highest_stack_level = drawing.partition("\n\n").first.split(/\n/).size

  stacks = drawing
           .lines
           .take(highest_stack_level)
           .map { |level| level.chars.each_slice(4).to_a.map { |string_with_stack| string_with_stack[1] } }
           .transpose
           .map(&:reverse)
           .to_h { |stack| [stack[0].to_i, stack[1..].join.strip.chars] }

  procedures = drawing
               .lines
               .drop(highest_stack_level + 1)
               .map { |line| line.scan(/\d+/).map(&:to_i) }

  procedures.each do |procedure|
    from = stacks[procedure[1]]
    destination = stacks[procedure[2]]

    cargo = from.pop(procedure[0])
    destination.push(cargo).flatten!
  end

  stacks.values.map(&:last).join
end

drawing = File.read('./day_5/drawing_of_the_starting_stacks_and_rearrangement_procedure.txt')
p "[Day 5][Part 1]: #{rearrange_crates(drawing)}"
p "[Day 5][Part 2]: #{rearrange_crates_moving_multiple_at_once(drawing)}"
