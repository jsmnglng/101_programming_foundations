# Write a method that searches for all multiples of 3 or 5 that lie between 1
# and some other number, and then computes the sum of those multiples. For
# instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 +
# 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# PROBLEM SOLVING APPROACH

# Input: integer greater than 1
# Output: sum of multiplies of 3 or 5 that lie between 1 and input integer

# Example:
# input is 20
# find all multiples of 3 or 5 between 1 and 20
# multiples of 3 or 5: 3, 5, 6, 9, 10, 12, 15, 18, 20
# add all the multiples
# return the result

def multisum(number)
  sum = 0
  while number > 0
    if number % 3 == 0 || number % 5 == 0
      sum += number
    end
    number -= 1
  end

  sum
end

multisum(20) == 98
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# or
def multiple?(number, divisor)
  number % divisor == 0
end

def multisum(max_value)
  sum = 0
  1.upto(max_value) do |number|
    if multiple?(number, 3) || multiple?(number, 5)
      sum += number
    end
  end
  sum
end

# FURTHER EXPLORATION

# Investigate Enumerable.inject (also known as Enumerable.reduce), How might
# this method be useful in solving this problem? (Note that Enumerable methods
# are available when working with Arrays.) Try writing such a solution. Which
# is clearer? Which is more succinct?

def multisum(number)
  (1..number).select { |n| n % 3 == 0 || n % 5 == 0}.reduce(:+)
end
