# Using the multiply method from the "Multiplying Two Numbers" problem, write a
# method that computes the square of its argument (the square is the result of
# multiplying a number by itself).

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# Output: number
# Requirement: Compute for the square of the number
# Rule: Use the multiply method

# EXAMPLE / TEST CASE
# Input: 5
# Output: 25

# Input: -8
# Output: 64

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Use the multiply method to compute the square of the number
#    -Multiply the number to itself
# 2. Return the result

# CODE
def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

# FURTHER EXPLORATION
# What if we wanted generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc. How would we go about doing so
# while still using the multiply method?

def power_to_n(num, power)

end
