# Write a method that takes one integer argument, which may be positive,
# negative, or zero. This method return true if the number's absolute value
# is odd. You may assume that the argument is a valid integer value.

def is_odd?(number)
  number % 2 == 1
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
#   -integer
# Output:
#   -boolean
# Make requirements explicit:
#   -absolute value - the magnitude of a real number without regard to its
#                     sign and only concerns with how far a number is from
#                     zero (0). Absolute value symbol: "|"
#                     Example: |-7| = 7 (the absolute value of -7 is 7)
#                              |9| = 9 (the absolute value of 9 is 9)
#   -odd - an integer that is not a multiple of two. Opposite: even
# Rules:
#   -the argument can be positive, negative or zero integer
#   -if the number's absolute value is odd, return true
#   -you may assume that the argument is a valid integer value
#   -you are not allowed to use `odd?` or `even?` method in your solution
# Clarifying Question:
#   -What do you return if the number's absolute value is even? false.
# Mental Model:
#   -Check if the number's absolute value is odd or even. Return true if
#    the number is odd, otherwise, return false.

# EXAMPLES / TEST CASES
# Input: 2
# Output: false

# Input: 5
# Output: true

# Input: -17
# Output: true

# Input: -8
# Output: false

# Input: 0
# Output: false

# Input: 7
# Output: true

# DATA STRUCTURE
# -number

# ALGORITHM
# 1. Check if the number is not a multiple of 2
#    number % 2 == 1
# 2. If the number is not a multiple of 2, return true
# 3. Otherwise, return false

# CODE
def is_odd?(number)
  if number % 2 == 1
    return true
  else
    return false
  end
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# Shorthand solution
def is_odd_1?(number)
  number % 2 == 1
end

puts is_odd_1?(2)    # => false
puts is_odd_1?(5)    # => true
puts is_odd_1?(-17)  # => true
puts is_odd_1?(-8)   # => false
puts is_odd_1?(0)    # => false
puts is_odd_1?(7)    # => true

# Further Exploration
# If you weren't certain whether % were the modulus or remainder operator, how
# would you rewrite #is_odd? so it worked regardless?

# The Integer#remainder method performs a remainder operation in Ruby. Rewrite
# #is_odd? to use Integer#remainder instead of %. Note: before version 2.4,
# Ruby used the Numeric#remainder method instead.

def is_odd?(number)
  number.abs.remainder(2) == 1
end
