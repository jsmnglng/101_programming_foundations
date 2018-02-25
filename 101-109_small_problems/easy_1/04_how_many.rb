# Write a method that counts the number of occurrences of each element in a
# given array.

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)

# Once counted, print each element alongside the number of occurrences.

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    if occurrences.has_key?(element)
      occurrences[element] += 1
    else
      occurrences[element] = 1
    end
  end

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: array of vehicles
# Output: hash of name of vehicles and how many times they occurred in the array
# Mental Model:
#   -count how many times each element occurred in the array and print each
#    element and the number of times they occured

# EXAMPLES / TEST CASES
# Input:
#   vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
#               'motorcycle', 'motorcycle', 'car', 'truck']
# Output:
#   car => 4
#   truck => 3
#   SUV => 1
#   motorcycle => 2

# DATA STRUCTURE
# hash

# ALGORITHM
# 1. Create a hash called 'occurrences' that will contain the output
# 2. Iterate through each element in the vehicles array
#    2.1 Compare `key` to the current element
#    2.2 If `occurrences` has key of the current element, count the current
#        element as 1 and add it to `occurrences`'s key's value
#    2.3 else, make that current element as new key and add 1 to its value
# 3. Print the keys and their values as strings

def count_occurrences(array)
  occurrences = {}

  array.each do |element|
    if occurrences.has_key?(element)
      occurrences[element] += 1
    else
      occurrences[element] = 1
    end
  end

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

count_occurrences(vehicles)
