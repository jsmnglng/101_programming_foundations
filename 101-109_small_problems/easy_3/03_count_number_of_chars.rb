# Write a program that will ask a user for an input of a word or multiple
# words and give back the number of characters. Spaces should not be counted
# as a character.

# Input: string
# Output: number of input's characters

print 'Please write word or multiple words: '
words = gets.chomp
number_of_characters = words.split.join.size
puts "There are #{number_of_characters} characters in \"#{words}\"."
