LANGUAGE = 'en'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

def operation_to_message(op)
  word = case op
         when '1'
           'Adding'
         when '2'
           'Subtracting'
         when '3'
           'Multiplying'
         when '4'
           'Dividing'
         end

  word
end

prompt(messages('welcome', LANGUAGE))

name = ''
loop do
  name = Kernel.gets.chomp

  if name.empty?
    prompt(messages('empty_name', LANGUAGE))
  else
    break
  end
end

prompt(messages('greet_name', LANGUAGE) % { yml_name: name })

loop do # main loop
  number1 = ''
  number2 = ''
  operator = ''

  loop do # catching dividing something by 0 loop
    loop do # number1 validation loop
      prompt(messages('first_number', LANGUAGE))
      number1 = Kernel.gets.chomp

      if valid_number?(number1)
        break
      else
        prompt(messages('invalid_number', LANGUAGE))
      end
    end

    loop do # number2 validation loop
      prompt(messages('second_number', LANGUAGE))
      number2 = Kernel.gets.chomp

      if valid_number?(number2)
        break
      else
        prompt(messages('invalid_number', LANGUAGE))
      end
    end

    operator_prompt = <<-MSG
      What operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
    MSG

    prompt(messages('choose_operator', LANGUAGE) % { yml_op: operator_prompt })

    loop do # operator validation loop
      operator = Kernel.gets.chomp

      if %w(1 2 3 4).include?(operator)
        break
      else
        prompt(messages('invalid_operator', LANGUAGE))
      end
    end

    if operator == '4'
      break if number2 != '0'
      # prompt("You cannot divide #{number1} by 0. Try again...")
      prompt(messages('zero_input', LANGUAGE) % { yml_number1: number1 })
    else
      break
    end
  end

  prompt(messages('computing_message', LANGUAGE) % { yml_op_message:
         operation_to_message(operator) })

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

  prompt(messages('result', LANGUAGE) % { yml_result: result })

  prompt(messages('calculate_again', LANGUAGE))
  answer = Kernel.gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt(messages('goodbye_message', LANGUAGE))
