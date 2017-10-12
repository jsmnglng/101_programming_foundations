# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method return `true` if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

# Understanding the Problem
# - Explicit
# - Input: int
# - Output: boolean
# - Requirements:
#   - Given int may be positive/negative/zero
#   - Return true if given int's abs value is odd

# Examples/Test Cases
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true

# Data Structure
# - Number

# Algorithm
# START
# GET int
# IF int % 2 != 0
#   PRINT true
# ELSE
#   PRINT false
# END

def is_odd?(number)
  number % 2 != 0
  # or
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


# Further Exploration
# If you weren't certain whether `%` were the modulus or remainder operator,
# how would you rewrite `#is_odd?` so it worked regardless?
def is_odd?(number)
  abs_number = number.abs
  abs_number - (abs_number / 2) * 2 == 1
end

# The `Integer#remainder` method performs a remainder operation in Ruby.
# Rewrite `#is_odd?` to use `Integer#remainder` instead of `%`.
def is_odd?(number)
  number.abs.remainder(2) == 1
end
