# Write a method that counts the number of occurrences of each element in a
# given array.

vehicles = [ 'car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

# Understanding the Porblem
# - Input: Array
# - Output: Hash
# - Problem: How to count the number of occurrences of each element of the given array?
# - Breaking it down...
# - When the array is being iterated, how do you monitor the number of occurrences of each element?

# Data Structure
# - Hash

# Algorithm
# - Set an empty hash
# - Iterate through each element of the array
#   - add the counted occurrence as value to the hash
# - Iterate through each key and value of the hash
#   - Display result

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    occurrences[element] = array.count(element)
  end

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)
