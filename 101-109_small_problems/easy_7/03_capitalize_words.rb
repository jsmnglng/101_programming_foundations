# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument with the first character of
# every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

def word_cap(string)
  capitalized = []
  string = string.split
  counter = 0

  loop do
    break if counter == string.size
    capitalized << string[counter].capitalize
    counter += 1
  end

  capitalized.join(" ")
end

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Further Exploration
def word_cap(string)
  words = string.downcase.split
  counter = 0

  loop do
    break if counter == words.size
    current_word = words[counter]
    current_word[0] = current_word[0].upcase
    counter += 1
  end

  words.join(' ')
end

def word_cap(string)
  capitalized = string.downcase.split.map do |word|
    word[0].upcase + word[1..-1]
  end
  capitalized.join(' ')
end
