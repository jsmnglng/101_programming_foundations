# Write a method that takes two arguments, a positive integer and a boolean,
# and calculates the bonus for a given salary. If the boolean is true, the
# bonus should be half of the salary. If the boolean is false, the bonus should
# be 0.

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
# -positive integer
# -boolean
# Output:
# -number (bonus for a given salary)
# Rules:
# -If input boolean is true, bonus should be half of the salary
# -Else, the bonus should be 0.

# EXAMPLE / TEST CASES
# Input: 2800, true
# Output: 1400

# Input: 1000, false
# Output: 0

# Input: 50000, true
# Output: 25000

# DATA STRUCTURE
# number

# ALGORITHM
# 1. If input boolean is true, divide the salary input by 2 and return the
#    bonus salary
# 2. Else, return 0

# CODE
def calculate_bonus(salary, bonus)
  if bonus
    bonus_salary = salary / 2
  else
    bonus_salary = 0
  end

  bonus_salary
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

# or
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end
