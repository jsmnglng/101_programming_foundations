# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

# Understanding the Problem
# - Input: array
# - Output: integer
# - How to access the integer one by one?
# - How to add all the integers in the array and divide by its array length?
# - Requirements:
#   - The array will never be empty
#   - The numbers in the array will always be positive
# - Average formula:
#   average = sum of all numbers in a list / number of items in that list

# Examples/Test Cases:
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# Data Structure
# - Array

# Algorithm
# Iterate through each element one by one
#   - Add every number on the array
#   - Divide the sum by the number of elements of the array
# Return average

def average(numbers)
  counter = 0
  sum = 0

  loop do
    sum += numbers[counter]
    counter += 1
    break if counter == numbers.count
  end

  total_average = sum / numbers.size
  return total_average
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])
