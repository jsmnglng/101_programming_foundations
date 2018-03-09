# Write a program that prompts the user for two positive integers, and then
# prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power. Do not worry
# about validating the input.

def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number:')
first_number = gets.chomp.to_i
prompt('Enter the second number:')
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: integer
# -2 positive integers
# Output: integer
# -addition, subtraction, product, quotient, remainder, and power of the 2
#  integers

# EXAMPLE / TEST CASE
# Input:
# -first number: 23
# -second number: 17
# Output:
# - 23 + 17 = 40
# - 23 - 17 = 6
# - 23 * 17 = 391
# - 23 / 17 = 1
# - 23 % 17 = 6
# - 23 ** 17 = 141050039560662968926103

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Get the first number
# 2. Get the second number
# 3. Get the sum of the 2 numbers
# 4. Get the difference of the 2 numbers
# 5. Get the product of the 2 numbers
# 6. Get the quotient of the 2 numbers
# 7. Get the remainder of the 2 numbers
# 8. Get the exponent of the first number
# 9. Display the result of the operations

# CODE
def prompt(message)
  puts "==> #{message}"
end

prompt "Enter the first number:"
first_number = gets.to_i
prompt "Enter the second number:"
second_number = gets.to_i

sum = first_number + second_number
difference = first_number - second_number
product = first_number * second_number
quotient = first_number / second_number
remainder = first_number % second_number
power = first_number**second_number

prompt "#{first_number} + #{second_number} = #{sum}"
prompt "#{first_number} - #{second_number} = #{difference}"
prompt "#{first_number} * #{second_number} = #{product}"
prompt "#{first_number} / #{second_number} = #{quotient}"
prompt "#{first_number} % #{second_number} = #{remainder}"
prompt "#{first_number} ** #{second_number} = #{power}"

# or
def prompt(message)
  puts "==> #{message}"
end

prompt('Enter the first number:')
first_number = gets.chomp.to_i
prompt('Enter the second number:')
second_number = gets.chomp.to_i

prompt("#{first_number} + #{second_number} = #{first_number + second_number}")
prompt("#{first_number} - #{second_number} = #{first_number - second_number}")
prompt("#{first_number} * #{second_number} = #{first_number * second_number}")
prompt("#{first_number} / #{second_number} = #{first_number / second_number}")
prompt("#{first_number} % #{second_number} = #{first_number % second_number}")
prompt("#{first_number} ** #{second_number} = #{first_number**second_number}")

# FURTHER EXPLORATION
# There are some edge cases to consider in this exercise. We have to be careful
# of not having a second number that is zero. What if we wanted to use floats
# instead of integers? How does this change this problem?

# On edge cases, we need to validate the 2 numbers if it is a positive integer.
# If we wanted to use floats, you can convert it using Integer#to_f method. It
# changes the result of each operation. Even if the answer is a whole
# number(integer), it will have a ".0" in the end of the number.
