# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.

age = rand(20..200)
puts "Teddy is #{age} years old!"

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: random number - age
# Output: number

# EXAMPLE OUTPUT:
# Teddy is 69 years old!

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Create a variable called 'age' that will contain the random number of age
# 2. Return the generated age together with the string "Teddy is ('age') years
#    old!"

# CODE
age = rand(20..200)
puts "Teddy is #{age} years old!"

# FURTHER EXPLORATION
# Modify this program to ask for a name, and then print the age for that
# person. For an extra challenge, use "Teddy" as the name if no name is entered.

# ask for a name
# if name is not entered, use "Teddy" as the default name
# print the age for that person
puts "What is your name?"
name = gets.chomp

name = "Teddy" if name.empty? || name.match(/\s/)

age = rand(20..200)
puts "#{name.capitalize} is #{age} years old!"
