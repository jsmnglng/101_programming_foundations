# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with all five or more letter words
# reversed. Each string will consist of only letters and spaces. Spaces
# should be included only when more than one word is present.

# Understanding the Problem
# - Input: string
# - Output: string
# - Requirements:
#   - Input string - 1 or more words
#     - letters and spaces only
#   - Reverse words of input string if it contains 5 or more letter words
#   - Include space if and only if input str is more than 1 word

# Examples/Test Cases
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS

# Data Structure
# - String

# Algorithm
# START
# Given a string
# Split the string to create array of words
# Iterate through the array
#   IF word char length >= 5
#     reverse each chars of the word
#   ELSE
#     return word
# Convert the array to string
# Return the reversed string
# END

def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
