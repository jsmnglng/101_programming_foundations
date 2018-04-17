# Write a method that takes an Array, and returns a new Array with the elements of the 
# original list in reverse order. Do not modify the original list.

# You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote 
# in the previous exercise.

def reverse(array)
  reversed_array = []
  counter = 0
  while counter < array.size
    reversed_array.unshift(array[counter])
    counter += 1
  end
  reversed_array
end

arr = [1, 2, 3, 4]
p reverse(arr)
p arr 

# Further Exploration
def reverse(array)
  reversed_array = array.each_with_object([]) { |el, arr| arr.unshift(elem) }
end