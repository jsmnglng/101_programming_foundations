# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

# Understanding the Problem
# - Input: integer
# - Output: string
# - How to output alternating 1s and 0s??
# - How to match the length of 1s and 0s to the given integer????

# Data Structure
# - Number

# Algorithm
# START
# Given a positive integer called "size"
# SET numbers_array = []
# SET iterator = 1
# WHILE iterator < size
#   IF iterator is odd
#     add string '1' to numbers
#   ELSE
#     add string '0' to numbers
# iterator = iterator + 1
# Convert numbers_array to string
# END

def stringy(size)
  numbers = []
  counter = 1

  while counter <= size
    number = counter.odd? ? 1 : 0
    numbers << number
    counter += 1
  end

  numbers.join
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
