# Write a method that takes two Arrays as arguments, and returns an Array that contains 
# all of the values from the argument Arrays. There should be no duplication of values in 
# the returned Array, even if there are duplicates in the original Arrays.

def merge(array_1, array_2)
  array_1 | array_2
end

# Further Exploration:
def merge(array_1, array_2)
  (array_1 + array_2).uniq
end