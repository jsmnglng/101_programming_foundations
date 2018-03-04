# Print all odd numbers from 1 to 99, inclusive. All numbers should be printed
# on separate lines.

value = 1
while value <= 99
  puts value
  value += 2
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -1 to 99
# Output: number
# -odd numbers from 1 to 99
# Rules:
# -print all odd numbers inclusive
# -all numbers should be printed on separate lines

# EXAMPLE RUN
# 1
# 3
# 5
# 7
# ...
# 97
# 99

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Create a variable called 'number' that will contain the first current
#    number (which is 1)
# 2. While 'number' is less than 100
#    2.1. Validate if number is odd
#    2.2. If number is odd, print the number
#    2.3. add 1 to number

# CODE
number = 1
while number < 100
  puts number if number % 2 == 1
  number += 1
end

# or
value = 1
while value <= 99
  puts value
  value += 2
end

# FURTHER EXPLORATION
# Repeat this exercise with a technique different from the one you just used,
# and different from the solution shown above. You may want to explore the use
# Integer#upto or Array#select methods, or maybe use Integer#odd?

numbers = (1..99).select { |number| number.odd? }
puts numbers

1.upto(99) { |n| puts n if n.odd? }

(1..99).each { |num| puts num if num.odd? }
