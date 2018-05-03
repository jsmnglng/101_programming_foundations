# Write a method that takes two arguments: the first is the starting number, 
# and the second is the ending number. Print out all numbers between the two 
# numbers, except if a number is divisible by 3, print "Fizz", if a number is 
# divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 
# 5, print "FizzBuzz".

def fizzbuzz(start_num, end_num)
  numbers = []
  start_num.upto(end_num) do |num|
    if num % 3 == 0 && num % 5 == 0
      numbers << "FizzBuzz"
    elsif num % 3 == 0
      numbers << "Fizz"
    elsif num % 5 == 0
      numbers << "Buzz"
    else
      numbers << num
    end
  end
  numbers.join(', ')
end

p fizzbuzz(1, 15) == '1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz'

# Based on Launch School solution
def fizzbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0 then 'FizzBuzz'
  when num % 3 == 0 then 'Fizz'
  when num % 5 == 0 then 'Buzz'
  else num
  end
end

def fizzbuzz(start_num, end_num)
  (start_num..end_num).map { |num| fizzbuzz_value(num) }.join(', ')
end
