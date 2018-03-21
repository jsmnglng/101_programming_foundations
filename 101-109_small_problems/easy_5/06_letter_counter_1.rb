# Write a method that takes a string with one or more space separated words and 
# returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Input: string
# Output: hash
# key => number of size of words
# value => how many times did that size of word occurred in the string
# Rule: input words that consist any string of chars that do not include a 
# space.

# Example:
# Input: "Four score and seven."
# Output: { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }

# Input: "Hey diddle diddle, the cat and the fiddle!"
# Output: { 3 => 5, 6 => 1, 7 => 2 }

# Input: "What's up doc?"
# Output: { 6 => 1, 2 => 1, 4 => 1 }

# Input: ""
# Output: {}

def word_sizes(words)
  letter_counter = {}
  words.split.each do |word|
    key = word.size
    if letter_counter.has_key?(key)
      letter_counter[key] += 1
    else
      letter_counter[key] = 1
    end
  end
  letter_counter
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# or
def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end