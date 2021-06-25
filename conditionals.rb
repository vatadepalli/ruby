number = 10

# if, elseif, else
if number.between?(1, 10)
  puts "The number is between 1 and 10"
elsif number.between?(11, 20) # can have many elseif
  puts "The number is between 11 and 20"
else # else not mandatory
  puts "The number is bigger than 20"
end

# if
number = 5
puts "The number is odd." if number.odd?

# unless
unless number.odd?
  puts "The number is not odd."
end

# Return value - returns last evaluated - just like method
message = if number.even?
    "The number is even."
  else
    "The number is odd."
  end

puts message

def message(number)
  if number.even?
    "The number is even."
  else
    "The number is odd."
  end
end

puts message(2)
puts message(3)
