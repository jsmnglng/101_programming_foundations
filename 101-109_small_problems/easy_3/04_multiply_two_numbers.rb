# Create a method that takes two arguments, multiplies them together, and
# returns the result.

def multiply(num1, num2)
  num1 * num2
end

multiply([5], 3) == 15 # => true

# Further Exploration
# For fun: what happens if the first argument is an Array? What do you think
# is happening here?
# - the second argument will multiply the elements of the array
# Example:
[5] * 4 # => [5, 5, 5, 5]
[1, 2, 3] * 2 # => [1, 2, 3, 1, 2, 3]
['hello', 'hi'] * 3 # => ['hello', 'hi', 'hello', 'hi', 'hello', 'hi']
