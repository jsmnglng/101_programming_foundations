# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates

def repeat(string, number)
  counter = number

  while counter > 0
    puts string
    counter -= 1
  end
end

repeat('Hello', 3)
# => Hello
#    Hello
#    hello


# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input:
#   -a string
#   -a positive integer
# Output:
#   -print string a specified number of times
# Make requirements explicit:
#   -a positive integer -> a number greater than 0
# Rules:
#   -first input must only be a string
#   -second input must only be a positive integer
# Mental Model:
#   -Use the given number to iterate through the string and print the
#    string on each iteration

# EXAMPLES / TEST CASES
# Input:
#   -'Hello'
#   -3
# Output:
# => 'Hello'
#    'Hello'
#    'Hello'

# Edge Cases
# Input:
#   -nil
#   -5
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -[]
#   -5
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -{}
#   -5
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -3
#   -5
# Output:
#   -Error message: (Enter correct input)

# Input:
#   - -1
#   -5
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -'Sup'
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -0
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   - -1
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -2.3
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -nil
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -[]
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -'Sup'
#   -{}
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -nil
#   -nil
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -[]
#   -[]
# Output:
#   -Error message: (Enter correct input)

# Input:
#   -{}
#   -{}
# Output:
#   -Error message: (Enter correct input)

# DATA STRUCTURE
# string and number

# ALGORITHM
# Example input: ('Hello', 3)
# 1. While `number` > 0
#    1.1 print `string`
#        string = "Hello"
#        string = "Hello"
#                 "Hello"
#        string = "Hello"
#                 "Hello"
#                 "Hello"
#    1.2 subtract 1 to `number`
#        number = number - 1

# CODE

def valid_str?(str)
  str.to_s == str
end

def valid_num?(num)
  num.to_s.to_i == num
end

def repeat(string, number)
  if valid_str?(string) && valid_num?(number)
    counter = number

    while counter > 0
      puts string
      counter -= 1
    end
  else
    puts "Enter the correct input: a string for the first input and a positive integer for the second input."
  end
end

repeat('Hello', 3)
repeat(nil, 5)
repeat([], 5)
repeat({}, 5)
repeat(3, 5)
repeat(-1, 5)
repeat('Sup', 'Sup')
repeat('Sup', 0)
repeat('Sup', nil)
repeat('Sup', [])
repeat('Sup', {})
repeat('Sup', 2.3)
repeat('Sup', -1)
repeat(nil, nil)
repeat(-2, -2)
repeat([], [])
repeat({}, {})

# Other solution (without edge cases):
def repeat_1(string, number)
  counter = number

  while counter > 0
    puts string
    counter -= 1
  end
end

# or

def repeat_2(string, number)
  number.times do
    puts string
  end
end

repeat_1('Hello', 3)
repeat_2('World', 3)
