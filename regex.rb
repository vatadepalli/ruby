text = "A regular expression is a sequence of characters that define a search pattern."

# contains
matches = text.match(/character/)
p matches

matches = text.match(/sentence/)
p matches

# begins with
puts 'Found "A" at the beginning of the string.' if text.match(/^A/)
puts 'Found "O" at the beginning of the string.' if text.match(/^O/)

puts 'Found the string "character".' if text.match(/character/)
puts 'Found the word "character".' if text.match(/character\b/) # boundary

p text.scan(/\b[AEIOUaeiou][a-z]*\b/) # * => none or more
p text.scan(/\b[AEIOUaeiou][a-z]+\b/) # + => atleast
p text.scan(/\b[AEIOUaeiou][a-z]?\b/) # ? => none or exactly one

# Find all words that are followed by a word that starts with a vowel.
p text.scan(/\b[A-Za-z]+\b +\b[AEIOUaeiou][a-z]*\b/)

# Captures
p text.scan(/\b([A-Za-z]+)\b +\b[AEIOUaeiou][a-z]*\b/) # () => match the full pattern, but only capture the parts that we’ve marked as interesting.

# ^ => Not
p text.scan(/\b[^AEIOUaeiou ][^ ]*\b/)

# Baked in Classes
# \d is the same as [0-9] (any digit)
# \D is the same as [^0-9] (everything except digits)
# \w is the same as [A-Za-z_\-], called word character (i.e. this allows all lowercase and uppercase latin letters, as well as underscores and dashes)
# \W is the same as [^A-Za-z_\-] (everything that is not a word character)
# \s means “any whitespace”, including spaces, tabs, and linebreaks
# \S everything that is not whitespace

p text.scan(/\b[A-Za-z]+\b +\b[AEIOUaeiou][a-z]*\b/)
p text.scan(/\b\w+\b +\b[AEIOUaeiou]\w*\b/)