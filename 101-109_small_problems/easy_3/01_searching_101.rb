# Write a program that solicits 6 numbers from the user, then prints a message
# that describes whether or not the 6th number appears amongst the first 5
# numbers.

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

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -6 numbers
# Output: array
# -array consists of the 6 numbers entered
# Rules:
# -check if the last number entered appears amongst the first 5 numbers entered

# EXAMPLE / TEST CASE
# Input:
# -1st number: 25
# -2nd number: 15
# -3rd number: 20
# -4th number: 17
# -5th number: 23
# -last number: 17
# Output:
# -the last number 17 appears in [25, 15, 20, 17, 23]

# Input:
# -1st number: 25
# -2nd number: 15
# -3rd number: 20
# -4th number: 17
# -5th number: 23
# -last number: 18
# Output:
# -the last number 18 does not appear in [25, 15, 20, 17, 23]

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Get 1st, 2nd, 3rd, 4th, and 5th number
# 2. While getting the first 5 numbers,
#    2.1 put them inside in an empty array called "numbers"
# 3. Get the last number
# 4. Compare the last number to the "numbers" array
#    4.1 If the last number is in the "numbers" array,
#        -Display the last number appears in the array
#    4.2 Else,
#        -Display the last number does not appear in the array

# CODE
def suffix(number)
  case number
  when 1 then "st"
  when 2 then "nd"
  when 3 then "rd"
  else "th"
  end
end


numbers = []
number = 0
count = 1

while count <= 5
  puts "==> Enter the #{count}#{suffix(count)} number:"
  number = gets.chomp.to_i
  numbers << number
  count += 1
end

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include?(last_number)
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end

# or
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
