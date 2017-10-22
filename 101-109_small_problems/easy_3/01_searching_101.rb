# Write a program that solicits 6 numbers from the user, then prints a
# message that describes whether or not the 6th number appears amongst the
# first 5 numbers.

# Understanding the Problem
# - Input: integers
# - Output: boolean if 6th number matches a number on the 5 numbers

# Data Structure
# - Array

# Algorithm:
# START
# GET 1st number
# GET 2nd number
# GET 3rd number
# GET 4th number
# GET 5th number
# GET last number
# match each number to the last number
# IF last number matched
#   PRINT "the last number appears on the 5 numbers"
# ELSE
#   PRINT "the last number does not appear on the 5 numbers"
# END

numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i
puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i
puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
