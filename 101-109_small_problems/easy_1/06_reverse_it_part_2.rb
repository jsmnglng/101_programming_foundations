# Write a method that takes one argument, a string containing one or more
# words, and returns the given string with all five or more letter words
# reversed. Each string will consist of only letters and spaces. Spaces should
# be included only when more than one word is present.

def reverse_words(words)
  words_list = words.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end

  words_list.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -string
# Output:
# -string
# -Reverse the 5 or more letter words if the given string contains 5 or more
#  letter words

# EXAMPLE / TEST CASES
# Input: 'Professional'
# Output: 'lanoisseforP'

# Input: 'Walk around the block'
# Output: 'Walk dnuora the kcolb'

# Input: 'Launch School'
# Output: 'chnuaL loohcS'

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Separate the substrings by converting the string into an array
# 2. Iterate through the array
#    2.1 If the word contains 5 or more chars, reverse the word
#    2.2 Else, return the word
# 3. Convert the array back to string
# 4. Return the altered string

# CODE
def reverse_words(words)
  words_list = words.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end

  words_list.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS


# or
def reverse_words_1(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end
