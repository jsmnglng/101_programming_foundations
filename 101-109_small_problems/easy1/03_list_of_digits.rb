# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.

# Understanding the Problem
# - Explicit
# - Input: int
# - Output: array
# - Problem: How do you put the digits of the number in a list?
# - Breaking it down...
# - How to separate each digit of the number?
# - How to iterate through each digit of the number?
# - Is there a need to convert the number into string?
# - How to move each digit in an array?

# Examples/Test Cases
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# Data Structure:
# - array

# Algorithm
# - Given a positive integer
# - Convert integer to string
# - Split string to separate each digit  of the integer
# - Iterate through each element of the string
#   - Convert each element to integer

def digit_list(number)
  number.to_s.chars.map do |digit|
    digit.to_i
  end
  # or
  number.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
