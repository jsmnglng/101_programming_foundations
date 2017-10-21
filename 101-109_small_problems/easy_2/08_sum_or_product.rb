# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.

# Understanding the Problem
# - Input: integer and string
# - Output: integer
# - How to calculate for the sum of numbers bet 1 and input integer?
# - How to calculate for the product of numbers bet 1 and input integer?

# Example Run
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p', to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.

# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.

# Data Structure
# - Number

# Algorithm
# START
# GET number > 0
# GET operator
# IF operator == 's'
#   compute_sum()
# ELSE IF operator == 'p'
#   compute_product()
# ELSE
#   PRINT "Unknown operation."
# PRINT sum || product
# END

# => Validate input number
# START
# LOOP
#  GET number
#  IF valid_number?(number)
#    END loop
#  ELSE
#    PRINT "Invalid number."
# END

# => Validate operation
# START
# LOOP
#   GET operation
#   IF operation == 's'
#      compute_sum(number)
#      END loop
#   ELSE IF operation == 'p'
#      compute_product(number)
#      END loop
#   ELSE
#     PRINT "Unknown operation."
# END

# => compute_sum()
# START
# Given a number
# SET total = 0
# WHILE number > 0
#  total = total + number
#  number = number - 1
# RETURN total
# END

# => compute_product()
# START
# Given a number
# SET total = 1
# WHILE number > 0
#  total = total * number
#  number = number - 1
# RETURN total
# END

def valid_number?(input)
  input > 0
end

def compute_sum(number)
  total = 0
  loop do
    total += number
    number -= 1
    break if number == 0
  end
  total
end

def compute_product(number)
  total = 1
  loop do
    total *= number
    number -= 1
    break if number == 0
  end
  total
end

number = nil
loop do
  puts '>> Please enter an integer greater than 0:'
  number = gets.chomp.to_i

  if valid_number?(number)
    break
  else
    puts "Enter positive number only. Try again."
  end
end

loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  if operation == 's'
    sum = compute_sum(number)
    puts "The product of the integers between 1 and #{number} is #{sum}."
    break
  elsif operation == 'p'
    product = compute_product(number)
    puts "The product of the integers between 1 and #{number} is #{product}."
    break
  else
    puts "Oops. Unknown operation ('s' for sum or 'p' for product only)."
  end
end
