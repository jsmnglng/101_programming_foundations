# As we have seen previously we can use some built-in string methods to change
# the case of a string. A notably missing method is something provided in
# Rails, but not in Ruby itself... titleize. This method in Ruby on Rails
# creates a string that has each word capitalized as it would be in a title.
# For example, the string:

words = "the flinstones rock"

# would be

words = "The Flinstones Rock"

# Write your own version of the rails titleize implementation.

words_array = words.split
counter = 0
loop do
  break if counter == words_array.size
  current_word = words_array[counter]
  current_word.capitalize!
  counter += 1
end

words = words_array.join(' ')

# or

words.split.map { |word| word.capitalize }.join(' ')

p words
