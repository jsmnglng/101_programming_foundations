# Alyssa asked Ben to write up basic implementation of a Fibonacci
# calculator, A user passes in two numbers, and the calculator will keep
# computing the sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran
# it, he got an error. Something about the limit variable. What's wrong
# with the code?

limit = 15

def fib(first_num, second_num)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# How would you fix this so that it works?
# - make limit variable an additional argument to fib() because defined
# methods have their own scoping rules. No variables outside of the 
# method can be passed in inside the method unless they are being used as
# an argument to the method.
