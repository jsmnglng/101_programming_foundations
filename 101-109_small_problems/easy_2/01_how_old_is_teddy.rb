# Build a program that randomly generates and prints Teddy's age. To get the
# age, you should generate a random number between 20 and 200.

# Understanding the Problem:
# - Input: n/a
# - Output: integer

# Example Output:
# Teddy is 69 years old!

# Data Structure
# - Number

# Algorithm
# Set a variable named "age"
# Generate a random number between 20 and 200 and save it to "age"
# Display result

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Further Exploration
# Modify this program to ask for a name, and then print the age for that
# person. For an extra challenge, use "Teddy" as the name if no name is
# entered.

puts "What is your name?"
name = gets.chomp
name = "Teddy" if name.empty?

age = rand(20..200)
puts "#{name} is #{age} years old!"
