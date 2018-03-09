# Write a method that returns an Array that contains every other element of an
# Array that is passed in as an argument. The values in the returned list
# should be those values that are in the 1st, 3rd, 5th, and so on elements of
# the argument Array.

def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: array
# Output: array
# -1st, 3rd, 5th, and so on elements of the Array

# EXAMPLE / TEST CASE
# Input: [2, 3, 4, 5, 6]
# Output: [2, 4, 6]

# Input: ['abc', 'def']
# Output: ['abc']

# Input: [123]
# Output: [123]

# Input: []
# Output: []

# DATA STRUCTURE
# array

# ALGORITHM
# 1. Create an empty array called "odd_elements"
# 2. Iterate through each element in the given array
#    2.1 If the elements's index is even, put the element inside "odd_elements"
# 3. Return "odd_elements"

# CODE
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    if array.index(array[index]).even?
      odd_elements << array[index]
    end
    index += 1
  end
  odd_elements
end

# or
def oddities(array)
  odd_elements = []
  index = 0
  while index < array.size
    odd_elements << array[index]
    index += 2
  end
  odd_elements
end

# FURTHER EXPLORATION
# Write a companion method that returns the 2nd, 4th, 6th, and so elements of
# an array.

# Try to solve this exercise in at least 2 additional ways.

def evenities(array)
  even_elements = []
  index = 1
  while index < array.size
    even_elements << array[index]
    index += 2
  end
  even_elements
end

def evenities(array)
  array.select { |element| array.index(element).odd? }
end
