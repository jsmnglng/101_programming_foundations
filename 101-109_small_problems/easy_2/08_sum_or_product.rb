# Write a program that asks the user to enter an integer greater than 0, then
# asks if the user wants to determine the sum or product of all numbers between
# 1 and the entered integer.

def compute_sum(number)
  (1..number).inject(:+)
end

def compute_product(number)
  (1..number).inject(:*)
end

number = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
  puts ">> Enter a valid integer."
end

operation = nil
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts ">> Enter a valid operation."
end

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: integer
# Output: integer
# Rules:
# -input should be greater than 0
# -output is sum between 1 and the input integer OR
#            product between 1 and the input integer.

# EXAMPLE / TEST CASE
# Operation: add
# Input: 5
# Output: 15

# Operation: multiply
# Input: 6
# Output: 720

# Operation: whatever the user types in
# Input: 0
# Output: Invalid entry.

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Get the number
# 2. Validate the number if number is greater than 0
# 3. Get user's operation: 's' for sum; 'p' for product
# 4. Validate the operation if operation is 's' OR 'p'
# 5. If operation is 's', add all numbers between 1 and entered number
# 6. Else, if operation is 'p', multiply all numbers between 1 and entered
#    number
# 7. Display sum OR Display product

# Add all numbers between 1 and entered number
# Ex. number = 5
# 1 + 2 + 3 + 4 + 5 = 15
# 1. Create a variable called 'sum' that will contain the addition result
# 2. While number is greater than 0
#    2.1 sum = sum + number
#    2.2 number = number - 1

# Multiply all numbers between 1 and  number
# Ex. number = 6
# 1 * 2 * 3 * 4 * 5 * 6 = 720
# 1. Create a variable called 'product' that will contain the
#    multiplication result
# 2. While number is greater than 0
#    2.1 product = product * number
#    2.2 number = number - 1

# CODE
def compute_sum(number)
  sum = 0
  while number > 0
    sum += number
    number -= 1
  end
  sum
end

def compute_product(number)
  product = 1
  while number > 0
    product *= number
    number -= 1
  end
  product
end

number = nil
loop do
  puts ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  break if number > 0
  puts ">> Enter a valid integer."
end

operation = nil
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.downcase
  break if operation == 's' || operation == 'p'
  puts ">> Enter a valid operation."
end

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
else
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
end

# FURTHER EXPLORATION
# Try to use #inject in your solution to this problem.
def compute_sum(number)
  (1..number).inject(:+)
end

def compute_product(number)
  (1..number).inject(:*)
end
