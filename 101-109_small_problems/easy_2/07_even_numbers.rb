# Print the even numbers from 1 to 99, inclusive. All numbers should be
# printed on separate lines.

# Understanding the Problem
# - Input: integer
# - Output: integer

# Example Run
# 2
# 4
# 6
# ...
# 98

# Data Structure
# - Number

# Algorithm
# START
# SET value = 1
# WHILE value <= 99
#   puts value if value % 2 == 0
#   value += 1
# END

value = 1

while value <= 99
  puts value if value % 2 == 0
  value += 1
end
