# Definition
p "A String" # Single quotes
p "A String"
# Can also do - %[any-character]The actual string[the same character]
message = %(The given email address "#{address}" does not look like a valid email address.)
p %(A String)
p %{A String}
p %|A String|

# Interpolation
name = "Ada"
puts "Hello, #{name}!"

puts "Interpolation works in double quoted strings: #{1 + 2}."
puts 'And it does not work in single quoted strings: #{1 + 2}.'

# Concat
puts "snow" + "ball"

# Multiplication
puts "hi" * 3

# Escape Characters
puts "one\ntwo\nthree" # Works
puts 'one\ntwo\nthree' # Doesn't work

name = "Vijaya Aditya Tadepalli"

# String methods
puts name.upcase
puts name.capitalize
puts name.length
puts name.reverse
puts "a string".start_with?("a")
puts "a string".include?("s")

puts name + " " + "<3" * 3
puts name.ljust(name.length + 6, "<3")

# String conversions
string_int = "12"
string_float = "12.25"

puts string_int.to_i
puts string_int.to_f

puts string_float.to_i
puts string_float.to_f

# Prepend
puts "Learning".prepend("Machine ")

# Delete all instances of substring
res = "Machine Learning".delete("Macg")
puts res

puts "  hello  ".strip
