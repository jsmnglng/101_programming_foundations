# Build a command line calcuator program that does the following:
# - Asks for two numbers
# - Asks for the type of operation to perform:
#   - add, subtract, multiply and divide
# - Perform the operation on the two numbers
# - Displays the result

# Use the Kernel.gets() method to retrieve user input, and use Kernel.puts()
# method to display output. Remember that Kernel.gets() includes the newline,
# so you have to call chomp() to remove it: Kernel.gets().chomp().

# Revisions:
# - Added a new prompt()
# - Refactored the if statement to case statement (choosing an operator)
# - Referred to the calculator flow chart and created loops for
#    - validating first number and second number
#      -added method valid_number?()
#    - the whole program
#    - validating operator
# - Added a feature to enter a valid name first before using the program
# - Added heredoc that allows to write multiline strings (prompt choosing
#   operator)
# - Added operation_to_message() for dynamic program purposes
# - Tried removing some of the optional parentheses when calling methods to
#   start to get the hang of it

def prompt(message)
  Kernel.puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt "Welcome to Calculator! Enter your name:"

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt "Make sure to use a valid name."
  else
    break
  end
end

prompt "Hi #{name}!"

loop do # main loop
  number1 = ''
  loop do
    prompt "What's the first number?"
    number1 = Kernel.gets.chomp

    if valid_number?(number1)
      break
    else
      prompt "Hmm... that doesn't look like a valid number."
    end
  end

  number2 = ''
  loop do
    prompt "What's the second number?"
    number2 = Kernel.gets.chomp

    if valid_number?(number2)
      break
    else
      prompt "Hmm... that doesn't look like a valid number."
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt operator_prompt

  operator = ''
  loop do
    operator = Kernel.gets.chomp

    if %w(1 2 3 4).include? operator
      break
    else
      prompt "Must choose 1, 2, 3, or 4"
    end
  end

  # a little of being dynamic
  prompt "#{operation_to_message(operator)} the two numbers..."

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_f
           end

  prompt "The result is #{result}"

  prompt "Do you want to perform another calculation? (Y to calculate again)"
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with? 'y'
end

prompt "Thank you for using the calculator. Good bye!"
