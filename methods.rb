# class methods
puts "Hello".upcase

# stand-alone methods
puts is_a?(Object)

# When a method is called and objects are passed as arguments,
# then Ruby implicitly defines local variables with the argument names.

def add_two(number)
  number + 2 # res of last line will be returned
end

puts add_two(9)

# In Ruby, a method always returns exactly one single thing (an object).
# we do not have to use the statement return. When return not used
# method will return the value that was returned from the last evaluated statement.

# PUTS vs P
# * Use puts for regular displaying of stuff
# * Use p for debugging
puts 5.inspect
puts "Aditya"
puts "Aditya".inspect
p "Aditya" # same as puts obj.inspect
p [1, 2, 3]

# Argument vs. Parameters
# below - number1 and number2 are called parameter(s)
# 3, 4 are called arguments
def add(number1, number2)
  number1 + number2
end

puts add(3, 4)
# Paranthesis
# In Ruby, when you define or call (execute, use) a method,
#               you can omit the parentheses.
puts "Hello!"
puts("Hello!")
puts add 3, 4
