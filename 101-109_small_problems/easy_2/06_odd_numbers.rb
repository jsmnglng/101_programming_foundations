# Print all odd numbers from 1 to 99, inclusive. All numbers should be
# printed on separate lines.

# Understanding the Problem
# - Input: integer
# - Output: integer

# Example Run
# 1
# 3
# 5
# ...
# 99

# Data Structure
# - Number

# Algorithm
# START
# SET value = 1
# WHILE value <= 99
#   PRINT value
#   value = value + 2
# END

value = 1

while value <= 99
  puts value
  value += 2
end

# Repeat this exercise with a technique different from the one you just
# used, and different from the solution shown above. You may want to explore
# the use Integer#upto or Array#select methods, or maybe use Integer#odd?

# Integer#upto
1.upto(99) { |i| puts i if i % 2 == 1 }

# Array#select
(1..99).select { |i| puts i if i % 2 != 0 }

# Integer#odd
value = 1

loop do
  puts value if value.odd?
  break if value == 99
  value += 1
end
