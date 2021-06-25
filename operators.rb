# + - addition
# - - subtraction
# * - multiplication
# / - division
# ** - exponentiation
# % - modulus (the rest of a division, e.g. 5 % 2 returns 1)

# ______ ARITHEMETIC OPERATOR _________
puts "<3" + "!"
puts "<3" * 3

p [1, 2] + [3, 4]
p [1, 2] * 3

# ______ LOGICAL OPERATOR ___________
# and and &&
# or and ||
# not and !
# The difference is operator precedence -
#           In Ruby, the operators - &&, ||, and !
#           bind stronger - and, or, and not.

puts "Always true" if not false
puts "Always true" unless false

# ______ COMPARISON OPERATOR ___________
puts 1 == 1 * 1
puts "A" == "A" # 2 different things in memory
puts [1, 2] == [1, 2]  # 2 different things in memory
puts [1, 2] == [2, 1]  # 2 different things in memory

# In case you want to check if objects are same
puts "A".equal?("A") # False
puts :A.equal?(:A) # True
puts 1.equal?(1) # True

number = 20
puts "#{number} is greater than 10." if number > 10

# Spaceship Operator <=>
# This is usually used for comparators
# a <=> b
#   if a < b then return -1
#   if a = b then return  0
#   if a > b then return  1
#   if a and b are not comparable then return nil

# Operators are all methods
