# This application doesn't have a config file
# review purposes for course 101

def prompt(msg)
  puts "=> #{msg}"
end

def integer?(input)
  /^[+-]?\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def read_number(ord)
  loop do
    prompt "Enter the #{ord} number:"
    number = gets.chomp
    return number if valid_number?(number)
    prompt "Hmm... that doesn't look like a valid number."
  end
end

def operation_to_message(op)
  word = case op
         when '1' then 'Adding'
         when '2' then 'Subtracting'
         when '3' then 'Multiplying'
         when '4' then 'Dividing'
         end

  word
end

prompt "Welcome to Calculator!"

user_name = ''
loop do
  prompt "Enter your name:"
  user_name = gets.chomp.capitalize
  break if user_name != ''
end

prompt "Welcome #{user_name}!"

loop do # main loop
  number1 = read_number("first")
  number2 = read_number("second")

  operator_prompt = <<-MSG
Choose an operation:
--------------------------------
  *  1-Add
  *  2-Subtract
  *  3-Multiply
  *  4-Divide
--------------------------------
MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = gets.chomp
    break if %w(1 2 3 4).include?(operator)
    prompt "Hmm... that doesn't look like a valid operator."
  end

  if operator == '4'
    loop do
      break if number2 != '0'
      prompt "You cannot divide #{number1} by #{number2}. Try again..."
      number2 = read_number('second')
    end
  end

  result = case operator
           when '1' then number1.to_i + number2.to_i
           when '2' then number1.to_i - number2.to_i
           when '3' then number1.to_i * number2.to_i
           when '4' then number1.to_f / number2.to_f
           end

  prompt "#{operation_to_message(operator)} #{number1} and #{number2}..."
  sleep(1)

  prompt "The result is: #{result}"

  prompt "Do you want another calculation? (Y to calculate again)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using Calculator. Goodbye!"
