# Write a method that combines two Arrays passed in as arguments, and returns a new Array 
# that contains all elements from both Array arguments, with the elements taken in 
# alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number 
# of elements.

def interleave(array_1, array_2)
  combined_elements = []
  counter = 0
  
  loop do
    break if counter == array_1.length
    combined_elements << array_1[counter] << array_2[counter]
    counter += 1
  end

  combined_elements
end

p interleave([1, 2, 3], ['a', 'b', 'c'])

# Launch School Solution
def interleave(array1, array2)
  result = []
  array1.each_with_index do |element, index|
    result << element << array2[index]
  end
  result
end

# Further Exploration
def interleave(array_1, array_2)
  array_1.zip(array_2).flatten
end
