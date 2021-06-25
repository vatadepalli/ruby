numbers = [
  [1, 2, 3],
  [2, 2, 2],
  [3, 2, 1],
]

def sum_the_cols(nested_array)
  result = []
  # Write - Your - Code
  result = nested_array.map do |row|
    sum = 0
    row.each { |number| sum = sum + number }
    sum
  end
  return result
end

p sum_the_cols(numbers)

numbers.each do |row|
  str = ""
  row.each { |el| str += "*" * el + " " }
  puts str.strip
end

words = ["one", "two", "three", "four", "five"]
p words.reject { |word| word == "four" }
p words.select.with_index { |word, index| index.even? }

puts words.map { |word| word.capitalize }.join("\n")

# Align Exercise
width = words.max_by { |word| word.length }.length
puts words.collect.with_index { |word, idx| "#{word.ljust(width)} #{"<3" * (idx + 1)}" }
