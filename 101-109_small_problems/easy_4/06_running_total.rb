# Write a method that takes an Array of numbers, and returns an Array with the
# same number of elements, and each element has the running total from the
# original Array.

def running_totals(numbers)
  sum = 0
  numbers.map { |number| sum += number }
end

# PROBLEM SOLVING APPROACH

# Input: array
# Output: new array

# Example:
# Input is [2, 5, 13]
# Output will be new array containing [2, 7, 20]

def running_totals(numbers)
  sum = 0
  numbers.map { |number| sum += number }
end

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

# FURTHER EXPLORATION
# Try solving this problem using Array#each_with_object or Enumerable#inject
# (note that Enumerable methods can be applied to Arrays).

# Array#each_with_object
def running_totals(array)
  sum = 0
  array.each_with_object([]) do |number, arr|
    sum += number
    arr << sum
  end
end

# Enumerable#inject
def running_totals(array)
  running_total = []
  array.map do |num|
    running_total << num
    running_total.inject(:+)
  end
end
