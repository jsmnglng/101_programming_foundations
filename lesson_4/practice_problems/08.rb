# How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2) # => [1, 2]

# Depending on the argument, it will select the first n elements from the
# array. It doesn't mutate the original array.
