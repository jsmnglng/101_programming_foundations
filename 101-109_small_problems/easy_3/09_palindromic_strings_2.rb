# Write another method that returns true if the string passed as an argument is
# a palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters. If
# you wish, you may simplify things by calling the palindrome? method you wrote
# in the previous exercise.

def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: string
# Output: boolean
# Rule: ignore all non-alphanumeric characters

# EXAMPLE / TEST CASE
# Input: "madam"
# Output: true

# Input: "Madam"
# Output: true

# Input: "Madam, I'm Adam"
# Output: true

# Input: "356653"
# Output: true

# Input: "356a653"
# Output: true

# Input: "123ab321"
# Output: false

# DATA STRUCTURE
# string

# ALGORITHM
# 1. Lowercase all the characters of the input string
# 2. Get rid of the spaces of the input string
# 3. Get rid of the punctuations of the input string
# 4. Use palindrome?() to compare input string to its reversed string

def palindrome?(string)
  string == string.reverse
end

def real_palindrome?(string)
  string = string.downcase.gsub(/[^a-z0-9_]/, '')
  palindrome?(string)
end

# or
def real_palindrome?(string)
  string = string.downcase.delete('^a-z0-9')
  palindrome?(string)
end
