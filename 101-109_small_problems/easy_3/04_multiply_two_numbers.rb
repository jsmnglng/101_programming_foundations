# Create a method that takes two arguments, multiplies them together, and
# returns the result.

def multiply(num1, num2)
  num1 * num2
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number (2)
# Output: number
# Rules: assume that the input numbers are valid. (hehe :D)

# EXAMPLE / TEST CASE
# Input: 5, 3
# Output: 15

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Get the first number
# 2. Get the second number
# 3. Multiply the first number to the second number
# 4. Return the result

# CODE
def multiply(num1, num2)
  num1 * num2
end

# FURTHER EXPLORATION
# For fun: what happens if the first argument is an Array? What do you think is
# happening here?
# -it will multiply the array and that depends on the second argument on how
#  many times the array get multiplied.
# For example,
[1, 2, 3] * 2 # => [1, 2, 3, 1, 2, 3]
