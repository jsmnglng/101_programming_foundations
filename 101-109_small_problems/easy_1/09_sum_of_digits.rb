# Write a method that takes one argument, a positive integer, and returns the
# sum of its digits.

def sum(number)
  to_string = number.to_s
  to_array = to_string.chars
  sum = 0

  to_array.map do |num|
    sum += num.to_i
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -positive integer
# Output:
# -sum of the input's digits

# EXAMPLE / TEST CASES
# Input: 23
# Output: 5

# Input: 496
# Output: 19

# Input: 123_456_789
# Output: 45

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Convert the number to string
# 2. Convert the string to array
# 3. Iterate through the array
#    3.1 Add each element all together
# 4. Return the sum of elements of the array

def sum(number)
  to_string = number.to_s
  to_array = to_string.chars
  sum = 0

  to_array.map do |num|
    sum += num.to_i
  end
  sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

# or
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end
