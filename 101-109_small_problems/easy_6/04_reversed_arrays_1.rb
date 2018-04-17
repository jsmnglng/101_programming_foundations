# Write a method that takes an Array as an argument, and reverses its elements in place; 
# that is, mutate the Array passed into this method. The return value should be the same 
# Array object.

# You may not use Array#reverse or Array#reverse!.

def reverse!(array)
  left_index = 0
  right_index = array.length - 1
  
  while left_index < right_index
    first = array[left_index]
    last = array[right_index]

    array[left_index] = last
    array[right_index] = first

    left_index += 1
    right_index -= 1
  end

  array
end

# or
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end

  array
end
