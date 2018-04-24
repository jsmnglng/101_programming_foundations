# Write a method that takes two Array arguments in which each Array contains a list of 
# numbers, and returns a new Array that contains the product of each pair of numbers from 
# the arguments that have the same index. You may assume that the arguments contain the 
# same number of elements.

# multiply each of the elements of array 1 to each of the elements of array 2
# return a new array containing the product of the 2 arrays

def multiply_list(list_1, list_2)
  products = []
  counter = 0

  loop do
    break if counter == list_1.size
    products << list_1[counter] * list_2[counter]
    counter += 1
  end

  products
end

p multiply_list([3, 5, 7], [9, 10, 11])

# Further Exploration
def method_name(list_1, list_2)
  list_1.zip(list_2).map { |arr| arr.reduce(:*) }
end