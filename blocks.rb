# A block is a piece of code that accepts arguments and returns a value.
# A block is always passed to a method call.

5.times do
  puts "Oh, hello from inside a block!"
end

5.times { puts "hello!" } # Use curly braces {} for , when the code fits on one line.

# WITH ARGS
# Block arguments are listed between pipes |, instead of parentheses.
[1, 2, 3, 4, 5].each do |number|
  puts "#{number} was passed to the block"
end

[1, 2, 3, 4, 5].each { |number| puts "#{number} was passed to the block" }

# block returns a value just like methods do
p [1, 2, 3, 4, 5]
    .collect { |number| number + 1 }
    .collect { |number| number + 3 }

p [1, 2, 3, 4, 5] # Collect ~ Map
    .map { |number| number + 1 }
    .map { |number| number + 3 }

p [1, 2, 3, 4, 5].select { |number| number.odd? } # Filter
p [1, 2, 3, 4, 5].select { |number| number.odd? }.map { |number| number + 3 } # Filter + Map

p [1, 2, 3, 4, 5].detect { |number| number.even? } # Detect - returns the 1st element that satisfies criteria

# Inversion of Control
# - By accepting a block, from you as a programmer, the method can pass control to you.

# ITERATORS
# - Methods on arrays and hashes that take a block are also called iterators.
# - In Ruby iterators are “chainable”, adding functionality on top of each other.
# - If you don't pass block to the - you get an iterator object back

numbers = [1, 2, 3, 4, 5].collect.with_index do |number, index|
  number + index
end
p numbers
