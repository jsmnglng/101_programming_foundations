# Write a method that takes one argument, a positive integer, and returns a
# list of the digits in the number.

def digit_list(number)
  to_string = number.to_s.split('')
  counter = 0
  list_of_digits = []

  while counter < to_string.length
    current_char = to_string[counter]
    counter += 1
    digits = current_char.to_i
    list_of_digits << digits
  end

  list_of_digits
end

puts digit_list_1(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_1(7) == [7]                     # => true
puts digit_list_1(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_1(444) == [4, 4, 4]             # => true


# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
#   -a positive integer
# Output:
#   -list of the digits in the integer
# Make requirements explicit:
#   -positive integer -> a number greater than 0
#   -list of the digits -> array of digits of the given integer
# Rules:
#   -no negative integer, zero (0), float, nil, [], {}, string input
#   -the digits should stay as an integer
# Mental Model:
#   -Convert the positive integer to a string, then split each of the
#    characters of the string and convert each characters back to integer
#    and return the collection of digits of the number

# EXAMPLES / TEST CASES
# Input: 12345
# Output: [1, 2, 3, 4, 5]

# Input: 7
# Output: [7]

# Input: 375290
# Output: [3, 7, 5, 2, 9, 0]

# Input: 444
# Output: [4, 4, 4]

# Edge Cases
# Input: 0 || -123 || 'hello word' || 2.3 || nil || {} || []
# Output: Error message (positive integers only)

# DATA STRUCTURE
#   -Array

# ALGORITHM
# Example Input: (12345)

# 1. Create a variable called 'to_string' that will contain  the input
#    integer and convert it to string data type
#    to_string = int.to_s # used to_s method to convert obj to string

# 2. Split each characters of the string
#    to_string = to_string.split('')
#      # split('') method will return an array of each seaparated
#        characters of the string

# 3. Create a variable called 'counter' to help set count of the iteration
#    of the collection and contains a starting value of 0
#    counter = 0

# 4. Create an empty array called 'list_of_digits' that will contain the
#    list of digits
#    list_of_digits = []

# 5. While counter < to_string's length
#    5.1 create a variable called 'current_char' that will contain each
#        element of the array
#        current_char = to_string[counter]
#    5.2 add 1 to counter
#        counter = counter + 1
#    5.3 create a variable called 'digits' and contains 'current_char' that
#        is converted back to an integer
#        digits = char.to_i
#    5.4 Append `current_char` to 'list_of_digits'
#        list_of_digits = [1]
#        list_of_digits = [1, 2]
#        ...
#        list_of_digits = [1, 2, 3, 4, 5]

# 6. Return list_of_digits
#    [1, 2, 3, 4, 5]

# CODE

def valid_number?(num)
  num.to_s.to_i > 0 && num.to_s.to_i != 0 && num.to_s.to_i == num
end

def digit_list(number)
  if valid_number?(number)
    to_string = number.to_s.split('')
  else
    return "Positive integer only."
  end

  counter = 0
  list_of_digits = []

  while counter < to_string.length
    current_char = to_string[counter]
    counter += 1
    digits = current_char.to_i
    list_of_digits << digits
  end

  list_of_digits
end

p digit_list(12345)
p digit_list(7)
p digit_list(375290)
p digit_list(444)
p digit_list(0)
p digit_list("hello world")
p digit_list(-123)
p digit_list(2.3)
p digit_list(nil)
p digit_list([])
p digit_list({})

# Other solution (without edge cases):
def digit_list_1(number)
  number.to_s.chars.map do |digit|
    digit.to_i
  end
end

# or
def digit_list_2(number)
  number.to_s.chars.map(&:to_i)
end

puts digit_list_1(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_1(7) == [7]                     # => true
puts digit_list_1(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_1(444) == [4, 4, 4]             # => true
puts "------"
puts digit_list_2(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list_2(7) == [7]                     # => true
puts digit_list_2(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list_2(444) == [4, 4, 4]             # => true
