# Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a
# character.

print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: string
# Output: number
# -number of characters of the input word/s
# Rule:
# -Spaces are not counted as characters

# EXAMPLE / TEST CASE
# Input: "walk"
# Output: 4

# Input: "walk, don't run"
# Output: 13

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Get the word/s
# 2. Create an empty array called "characters" that will contain the characters
#    of the word individually.
# 3. Iterate each characters of the word/s
#    3.1. If a character is not " ",
#         -put them inside "characters"
# 4. Count the elements in "characters"
# 5. Return the number of characters

# CODE
print "Please write word or multiple words: "
words = gets.chomp

characters = []
counter = 0
loop do
  break if counter == words.size
  characters << words[counter] if words[counter] != " "
  counter += 1
end

number_of_characters = characters.size

puts "There are #{number_of_characters} characters in \"#{words}\"."

# or
print 'Please write word or multiple words: '
words = gets.chomp
number_of_characters = words.split.join.size
puts "There are #{number_of_characters} characters in \"#{words}\"."

# or
print 'Please write word or multiple words: '
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\"."
