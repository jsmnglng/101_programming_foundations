# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Understanding the Problem
# - Explicit
# - Input: str and int
# - Output: str
# - Requirements:
#   - Repeat given str same number of times as the given int
#   - Int is greater than 0

# Example/Test Case
# repeat('Hello', 3)
# => Hello
#    Hello
#    Hello

# Edge Cases
# Given int is negative, nil, zero, different data type
# Given str is nil, different data type

# Data Structure
# - Number

# Algorithm
# START
# Validate int > 0
# IF int is valid
#   SET iterator = 0
#   WHILE iterator < int
#    PRINT str
#    iterator = iterator + 1
# ELSE
#   PRINT error message
# END

def repeat(string, number)
  if number.to_i == number && number > 0
    counter = 0

    while counter < number
      puts string
      counter += 1
    end
  else
    puts "Positive number only."
  end
end

repeat('Hello', 3)      # => Prints "Hello" 3 times
repeat('Zero', 0)       # => Prints "Positive numbero only."
repeat('Negative', -3)  # => Prints "Positive numbero only."
repeat('Float', 4.5)    # => Prints "Positive numbero only."
repeat('String', 'Hi')  # => Prints "Positive numbero only."
repeat(nil, nil)        # => Prints "Positive numbero only."
