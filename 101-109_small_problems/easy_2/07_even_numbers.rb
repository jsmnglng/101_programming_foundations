# Print the even numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

value = 1
while value <= 99
  puts value if value.even?
  value += 1
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -1 to 99
# Output: number
# -even numbers from 1 to 99
# Rules:
# -print all even numbers inclusive
# -all numbers should be printed on separate lines

# EXAMPLE RUN
# 2
# 4
# 6
# 8
# ...
# 96
# 98

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Create a variable called 'number' that will contain the first current
#    number (which is 1)
# 2. While 'number' is less than 100
#    2.1. Validate if number is even
#    2.2. If number is even, print the number
#    2.3. Add 1 to number

# CODE
number = 1
while number < 100
  puts number if number % 2 == 0
  number += 1
end

# or
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
