Kernel.puts("Welcome to Calculator!")

# asks for two numbers
Kernel.puts("What's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("What's the second number?")
number2 = Kernel.gets().chomp()

# asks for the type of operation to perform:
# add, subtract, multiply and divide
Kernel.puts("What operation would you like to perform? 1-add, 2-subtract, 3-multiply, 4-divide")
operator = Kernel.gets().chomp()

# perform the operation on the two numbers
if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else
  result = number1.to_f() / number2.to_f()
end

# displays the result
Kernel.puts("The result is #{result}")
