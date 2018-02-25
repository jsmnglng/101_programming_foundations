# Write a method that takes one argument, a positive integer, and returns a
# string of alternating 1s and 0s, always starting with 1. The length of the
# string should match the given integer.

def stringy(size)
  numbers = ''

  size.times do |n|
    number = n.even? ? '1' : '0'
    numbers << number
  end

  numbers
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -positive integer
# Output:
# -string of alternating 1s and 0s
# Rules:
# -Output always starting with 1
# -The length of the string should match the given integer

# EXAMPLES / TEST CASES
# Input: 6
# Output: '101010'

# Input: 9
# Output: '101010101'

# Input: 4
# Output: '1010'

# Input: 7
# Output: '1010101'

# DATA STRUCTURE
# string

# ALGORITHM
# 1. Create a variable called 'stringy_string' to hold the result
# 2. Iterate through the number input
#    2.1 If the number is odd, append string '1' to 'stringy_string'
#    2.2 Else, append string '0' to 'stringy_string'
# 3. Return 'stringy_string'

# CODE
def stringy(size)
  numbers = ''

  size.times do |n|
    number = n.even? ? '1' : '0'
    numbers << number
  end

  numbers
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

# FURTHER EXPLORATION
# Modify stringy so it takes an optional argument that defaults to 1. If the
# method is called with this argument set to 0, the method should return a
# String of alternating 0s and 1s, but starting with 0 instead of 1.

def stringy_1(size, start = 1)
  numbers = ''

  if start == 0
    size.times do |n|
      number = n.odd? ? '1' : '0'
      numbers << number
    end
  else
    size.times do |n|
      number = n.even? ? '1' : '0'
      numbers << number
    end
  end

  numbers
end

puts stringy_1(6, 0)
puts stringy_1(9, 1)
puts stringy_1(4)
puts stringy_1(7, 0)
