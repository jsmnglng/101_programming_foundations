# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the
# user.

# Understanding the Problem
# - Input: string
#          - user's name
# - Output: string
#          - greet the user

# Example Run
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?

# Data Structure
# - String

# Algorithm
# START
# GET name
# IF input name include `!`
#    PRINT "HELLO (name in uppercase). WHY ARE WE SCREAMING?"
# ELSE
#    PRINT "Hello (name)."
# END

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
