# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and
# backward. For this exercise, case matters as does punctuation and spaces.

def palindrome?(string)
  string == string.reverse
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: string
# Output: boolean
# -evaluate if the input string is a palindrome
# Rules: case, punctuation, spaces, all characters matter

# EXAMPLE / TEST CASE
# Input: "madam"
# Output: true

# Input: "Madam"
# Output: false

# Input: "madam i'm adam"
# Output: false

# Input: "356653"
# Output: true

# DATA STRUCTURE
# string

# ALGORITHM
# 1. Create a variable called "reversed_string"
# 2. Reverse the input string and reference that to reversed_string
# 3. Compare the input string and reversed_string
#    -If input string is equal to reversed_string, return true
#    -Else, return false

# CODE
# made my own conversion of string to array method and reverse a string method
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

def palindrome?(string)
  string == reversed(string)
end

p palindrome?("madam")
p palindrome?("Madam")
p palindrome?("madam i'm adam")
p palindrome?("356653")

# FURTHER EXPLOARATION
# Write a method that determines whether an array is palindromic; that is, the
# element values appear in the same sequence both forwards and backwards in the
# array. Now write a method that determines whether an array or a string is
# palindromic; that is, write a method that can take either an array or a
# string argument, and determines whether that argument is a palindrome. You
# may not use an if, unless, or case statement or modifier.

# -The palindrome?() method works on an array as an argument too because Array
#  has a reverse method as well. What we can do is to generalize the name of
#  the parameter of palindrome?() so it may not look like it only works on
#  strings.

def palindrome?(input)
  input == input.reverse
end
