arr = ["A string", 1, true, :symbol, 2, [1, 2, 3]]
puts arr

# Index
puts arr[0]
puts arr[5][2]

# Append
words = ["one", "two", "three"]
words << "four"
puts words[3]

# Replace el
words[3] = "five"
puts words[3]

# No IndexOutOfBounds error - returns nil
words = ["one", "two", "three"]
puts words[3]
puts words[900]

# Other Ops
puts [1, 2] + [3, 4] # Concat
puts [:one, :two, :three, :four] - [:one, :four] # Subtract
puts ["Ruby", "Monstas"] * 3 # Multiply
puts ([1, 2, 3] & [2, 3, 4]) # Intersection
puts [1, 1, 1, 2].uniq # Unique
puts [1, 2, 3].size # Size
puts [3, 1, 2].sort # Sort
puts [3, 1, 2].shuffle # Shuffle
puts [1, 2, 3].join(", ") # Join
puts [1, 2, 3].include?(2) # Includes
puts [1, nil, 2, 3, nil].compact # Get rid of nils
puts [1, 2, 3].index(2) # Index of
puts [1, 2, 3, 4].rotate(2) # Rotate
puts [1, 2, 3, 4].reverse # Reverse
puts [[1, 2, 3], [4, 5, 6], [7, 8, 9]].transpose # Transpose
puts "________"
arr = [1, 2, 3]
arr.delete(2) # Delete El by Val
puts arr
puts "________"

# Select
def even_elements(input_array)
  result = input_array.select { |number| number.even? }
  return result
end

puts even_elements([1, 2, 3, 4, 5])

# Shuffle and Make Slices of Size
people = [
  "Anne",
  "Elizabeth",
  "Erica",
  "Iryna",
  "Johanna",
  "Juliane",
  "Katja",
  "Katrin",
  "Maria",
  "Renate",
  "Sureka",
  "Miriam",
  "Zazie",
  "Anja",
]
people.shuffle.each_slice(2) do |pair|
  p pair
  puts pair.join(", ")
end

# Alternate Syntax
# w - starts for words so %w(...) will always result in array of strings
people = %w(
  Anne
  Elizabeth
  Erica
  Iryna
  Johanna
  Juliane
  Katja
  Katrin
  Maria
  Renate
  Sureka
  Miriam
  Zazie
  Anja
)
people.shuffle.each_slice(2) do |pair|
  puts pair.join(", ")
end

# Exercise
objects = [true, false, 0, 1, "", [], Object.new, Class.new, Module.new]
width = objects.max_by { |el| el.to_s.length }.to_s.length
puts "#{%(object).to_s.ljust(width)} | !!object"

objects.each do |el|
  puts "#{el.inspect.ljust(width)} | #{!!el}"
end
