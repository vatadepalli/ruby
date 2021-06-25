# Symbols are a special, limited variation of Strings.
# Symbols are unique identifiers that are considered code, not data.

# _______ when to use symbol instead of string? ____________
# if the text at hand is "data", then use a string;
# if it's "code", then use a symbol, 
#          especially when used as keys in hashes.

# they aren't really text, even thoughthey read well. 
# Instead, they are unique identifiers, like numbers, or bar codes.

# ________ memory implications ________
# if you use strings that contain the same text in yourcode multiple times, 
# then a new string object will be created every time. 

# On the other hand, if you'd use a symbol for this 
# and do puts :hello 10 times, then 
# only one single object will be created, and "re-used".

puts "a string".object_id
puts "a string".object_id
puts "a string".object_id

puts :a_symbol.object_id
puts :a_symbol.object_id
puts :a_symbol.object_id

puts true.object_id
puts true.object_id

puts nil.object_id
puts nil.object_id
