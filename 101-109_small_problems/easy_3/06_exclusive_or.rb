# The || operator returns a truthy value if either or both of its operands are
# truthy, a falsey value if both operands are falsey. The && operator returns a
# truthy value if both of its operands are truthy, and a falsey value if either
# operand is falsey. This works great until you need only one of two conditions
# to be truthy, the so-called exclusive or.

# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

def xor?(value1, value2)
  (value1 && !value2) || (!value1 && value2)
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: 2 numbers being evaluated if they are odd or even
# Output: boolean
# Rules:
# Exclusive OR
# T || T = F
# T || F = T
# F || T = T
# F || F = F

# EXAMPLE / TEST CASE
# Input: 5.even?, 4.even?
# Output: true

# Input: 5.odd?, 4.odd?
# Output: true

# Input: 5.odd?, 4.even?
# Output: false

# Input: 5.even?, 4.odd?
# Output: false

# ALGORITHM
# 1. If one of the inputs is truthy, return true
# 2. Else, return false

def xor?(value1, value2)
  (value1 && !value2) || (!value1 && value2)
end
