# can use any kind of object as keys, 
#       and you can store any kind of object as values.

dict = { 
    "one" => "eins", 
    "two" => "zwei", 
    "three" => "drei" 
}

puts dict["one"]
dict["zero"] = "null"
puts dict["zero"]


# anything is possible
puts ({ 1 => "eins", 2 => "zwei", 3 => "drei" })
puts ({ :one => "eins", :two => "zwei", :three => "drei" })
puts ({ "weights" => ["pound", "kilogram"], "lengths" => ["meter", "mile"] })
puts ({ :de => { :one => "eins", :two => "zwei", :three => "drei" } })


# nil
dictionary = { "one" => "eins", "two" => "zwei", "three" => "drei" }
puts dictionary["four"]


# Other operations
dictionary = { "one" => "eins" }.merge({ "two" => "zwei" }) # Merge
puts dictionary
# puts dictionary.fetch("seven") # Fetch - same as [] but return KeyError if not found
puts dictionary.keys # keys
puts dictionary.values # values

# length & size
puts dictionary.length
puts dictionary.size


# Syntax - both are same
{ :one => "eins", :two => "zwei", :three => "drei" } # Old
{ one: "eins", two: "zwei", three: "drei" } # New

# Has key
puts dictionary.has_key?(:one)
puts dictionary.key?(:one)

# Invert
puts dictionary.invert

# Example
languages = {
    :de => 'German',
    :en => 'English',
    :es => 'Spanish',
}
dictionary = {
    :de => { :one => 'eins', :two => 'zwei', :three => 'drei' },
    :en => { :one => 'one', :two => 'two', :three => 'three' },
    :es => { :one => 'uno', :two => 'dos', :three => 'tres' }
}

languages.each { |k, v| puts "In #{v} one means #{dictionary[k][:one]}, two means #{dictionary[k][:two]}, three means #{dictionary[k][:three]}." }

languages.values.join(" ")