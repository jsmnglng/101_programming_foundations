# Write a program that will ask for user's name. The program will then greet
# the user. If the user writes "name!" then the computer yells back to the user.

print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name.capitalize}."
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: string
# -name of user
# Output: string
# -greet user with user's name
# Rule:
# -If user typed his name with "!", output uppercased strings

# EXAMPLE / TEST CASES
# Input: "Bob"
# Output: "Hello Bob"

# Input: "Bob!"
# Output: "HELLO BOB. WHY ARE WE SCREAMING?"

# DATA STRUCTURE
# string

# ALGORITHM
# 1. Get the user's name
# 2. If user's name includes "!",
#     -remove '!' from user's name
#     -display uppercased strings
# 3. Else, display greeting message with user's name

# CODE
print "What is your name? "
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name.capitalize}."
end

# FURTHER EXPLORATION
# Try modifying our solution to use String#chomp! and String#chop!,
# respectively.

print "What is your name? "
name = gets.chomp!

if name[-1] == '!'
  name = name.chop!
  puts "Hello #{name}. Why are we screaming?".upcase
else
  puts "Hello #{name.capitalize}."
end
