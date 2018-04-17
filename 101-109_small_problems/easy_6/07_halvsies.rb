# Write a method that takes an Array as an argument, and returns two Arrays that contain 
# the first half and second half of the original Array, respectively. If the original 
# array contains an odd number of elements, the middle element should be placed in the 
# first half Array.

def halvsies(arr)
  halvsies_arr = [[], []]
  halvsies[0] << arr[0..2]
  p halvsies
end

p halvsies([1, 2, 3, 4])