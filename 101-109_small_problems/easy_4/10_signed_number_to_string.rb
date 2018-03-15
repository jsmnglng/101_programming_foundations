# In the previous exercise, you developed a method that conveerts non-negative
# numbers to string. In this exercise, you're going to extend that method by
# adding the ability to represent negative numbers as well.

# Write a method that takes an integer and converts it to a string
# representation

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc. You may, however, use
# integer_to_string from the previous exercise.

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

def signed_integer_to_string(number)
  if number.positive?
    "+#{integer_to_string(number)}"
  elsif number.negative?
    "-#{integer_to_string(-number)}"
  else
    integer_to_string(number)
  end
end

p signed_integer_to_string(4321)
p signed_integer_to_string(-123)
p signed_integer_to_string(0)

# or
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end

# FURTHER EXPLORATION
# Refactor our solution to reduce the 3 integer_to_string calls to just one.

def signed_integer_to_string(number)
  return '0' if number == 0
  number > 0 ? sign = '+' : sign = '-'
  sign + integer_to_string(number.abs)
end
