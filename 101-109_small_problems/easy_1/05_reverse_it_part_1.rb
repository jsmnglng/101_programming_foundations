# Write a method that takes one argument, a string, and returns the same
# string with the words in reverse order.

# Understanding the Problem
# - Input: string
# - Output: string

# Examples/Test Cases
# puts reverse_sentence('') == ''
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'

# Data Structure:
# - String

# Algorithm
# - Split given string to create an array of words
# - Reverse the elements
# - Convert the array to string
# - Return the reversed string

def reverse_sentence(sentence)
  sentence.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
