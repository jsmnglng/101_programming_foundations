# In the modern era under the Gregorian Calendar, leap years occur in every
# year that is evenly divisible by 4, unless the year is also divisible by 100.
# If the year is evenly divisible by 100, then it is not a leap year unless the
# year is evenly divisble by 400.

# Assume this rule is good for any year greater than year 0. Write a method
# that takes any year greater than 0 as input, and returns true if the year is
# a leap year, or falase if it is not a leap year.

def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: integer (year)
# Output: boolean
# -Determine if year is a leap year
# -Leap years are:
#    -divisible by 4
#    -not divisible by 100, unless it is divisible by 400
# -Only greater than 0

# EXAMPLE / TEST CASE
# Input: 2016
# Output: true

# Input: 2015
# Output: false

# Input: 1
# Output: false

# Input: 100
# Output: false

# Input: 400
# Output: true

# Input: 1700
# Output: false

# Input: 2000
# Output: true

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Determine if year is leap year
#    -If year is not divisible by 100 unless it's divisible
#     by 4 and 400, it's a leap year
# 2. Return true if year is leap year, else false

# CODE
def leap_year?(year)
  year % 400 == 0 || year % 4 == 0 && year % 100 != 0
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# FURTHER EXPLORATION
# The order in which you perform tests for a leap year calculation is
# important. For what years will leap_year? fail if you rewrite it as:
def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

# => It will affect the years that are leap years but also are divisble by 100.

# Can you rewrite leap_year? to perform its tests in the opposite order of the
# above solution? That is, test whether the year is divisble by 4 first, then,
# if necessary, test whether it is divisible by 100, and finally, if necessary,
# test whether it is divisible by 400. Is the solution simpler or more complex
# than the original solution?

def leap_year?(year)
  return true if year % 4 == 0 && year % 100 != 0
  return true if year % 400 == 0
  return false
end

# For me it is simpler to read but I got confused and frustrated before coming
# up to this solution. :/ lol
