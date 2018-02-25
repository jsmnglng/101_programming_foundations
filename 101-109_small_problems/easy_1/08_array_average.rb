# Write a method that takes one argument, an array containing integers, and
# returns the average of all numbers in the array. The array will never be
# empty and the numbers will always be positive integers.

def average(numbers)
  sum = 0

  if numbers.empty?
    return "Input should never be empty."
  else
    numbers.each do |number|
      sum += number
    end
  end

  average = sum / numbers.length
  return "Positive integers only." if average <= 0
  average
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([-1, 23, -54, 3, 1]) == "Positive integers only."
puts average([]) == "Input should never be empty."

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -array containing integers
# Output:
# -average of all numbers in the array
# Rules
# -Input array will never be empty
# -numbers will always be positive integers

# EXAMPLE / TEST CASES
# Input: [1, 5, 87, 45, 8, 8]
# Output: 25

# Input: [9, 47, 23, 95, 16, 52]
# Output: 40

# EDGE CASES
# Input: []
# Output: Error message

# Input: [-1, 23, -54, 3, 1]
# Output: Error message

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Create a variable called 'sum'
# 2. Iterate through the array
#    2.1 Add all the numbers in the array and store the sum in 'sum'
# 3. Divide all the added numbers from the array to the number of length of the
#    array and store that result in a variable called 'average'
# 4. Return 'average'

# CODE
def average(numbers)
  sum = 0.0

  if numbers.empty?
    return "Input should never be empty."
  else
    numbers.each do |number|
      sum += number
    end
  end

  average = sum / numbers.size # or #length or #count
  return "Positive integers only." if average <= 0
  average
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
puts average([-1, 23, -54, 3, 1]) == "Positive integers only."
puts average([]) == "Input should never be empty."
