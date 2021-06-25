# The top-level scope is an empty, anonymous object. All Ruby code starts in here.

puts is_a?(Object)
#true
p methods
#[:to_s, :inspect, ... ]

# This empty Object kind of seems invisible, and it seems that those methods that we can define in this scope (space) were somehow “standing alone”. In fact, they aren’t. They’re defined on this empty, anonymous Object that we usually don’t see
