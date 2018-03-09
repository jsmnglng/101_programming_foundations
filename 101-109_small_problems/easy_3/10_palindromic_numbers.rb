# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: integer
# Output: boolean
# -Evaluate if the integer is palindromic

# EXAMPLE / TEST CASE
# Input: 34543
# Output: true

# Input: 123210
# Output: false

# Input: 22
# Output: true

# Input: 5
# Output: true

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Convert the integer to a string
# 2. Convert the number string to array
# 3. Reverse the array
# 4. Evaluate if the original array is equal to reversed array
#    -If original array is equal to reversed array,
#       -convert the array back to string
#       -convert the string to integer
#       -return true
#    -else,
#       -return false

# CODE
def string_to_array(string)
  array = []
  index = 0
  while index < string.size
    array << string[index]
    index += 1
  end
  array
end

def reversed(string)
  reversed_string = ""
  string = string_to_array(string)
  index = 0
  while index < string.size
    reversed_string << string.pop
  end
  reversed_string
end

def palindromic_number?(number)
  number_string = number.to_s
  number_reversed = reversed(number_string)
  number_string == number_reversed
end

# or
def palindrome?(string)
  string == string.reverse
end

def palindromic_number?(number)
  palindrome?(number.to_s)
end
