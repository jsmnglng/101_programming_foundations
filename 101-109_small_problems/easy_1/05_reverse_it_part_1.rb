# Write a method that takes one argument, a string, and returns the same string
# with the words in reverse order.

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -string
# Output:
# -string in reverse order
# Mental Model:
# -Reverse the order of the string and return the reversed string

# EXAMPLE / TEST CASES
# Input: ''
# Output: ''

# Input: 'Hello World'
# Output: 'World Hello'

# Input: 'Reverse these words'
# Output: 'words these Reverse'

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Separate the string by converting it into an array
# 2. Reverse the order of the array's index
# 3. Convert the array back to string
# 4. Return the reversed string

# CODE
def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
