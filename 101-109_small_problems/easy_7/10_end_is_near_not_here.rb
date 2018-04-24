# Write a method that returns the next to last word in the String passed to it as an 
# argument.

# Words are any sequence of non-blank characters.

# You may assume that the input String will always contain at least two words

def penultimate(string)
  string.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Further Exploration
def middle_word(string)
  arr = string.split
  arr.size > 1 && arr.size.odd? ? arr[(arr.size) / 2] : 'No middle word!'
end

middle_word('word') == 'No middle word'
middle_word('two words') == 'No middle word!'
middle_word('odd middle word') == 'middle'
middle_word('Launch School is the best!') == 'is'
