# Program: Mortgage Loan Calculator

require 'yaml'
MESSAGES = YAML.load_file('mortgage_calculator_msgs.yml')

def prompt(message)
  Kernel.puts "=> #{message}"
end

def integer?(input)
  /^\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  integer?(input) || float?(input)
end

def positive_number?(input)
  input.to_i > 0 || input.to_f > 0
end

def valid_entry?(input)
  valid_number?(input) && positive_number?(input)
end

def compute_monthly_pay(amount, interest, duration)
  amount.to_f * (interest / (1 - (1 + interest)**-duration))
end

prompt(MESSAGES['welcome'])
prompt(MESSAGES['hr'])

loop do # main loop
  # Obtain user input: amount, interest_rate, years
  # Validate loan amount
  amount = ''
  loop do
    prompt MESSAGES['loan_amount']
    amount = Kernel.gets.chomp

    if valid_entry?(amount)
      break
    else
      prompt(MESSAGES['valid_entry_error'])
    end
  end

  # Validate interest rate
  interest_rate = ''
  loop do
    prompt(MESSAGES['interest_rate'])
    prompt(MESSAGES['interest_rate_example'])
    interest_rate = Kernel.gets.chomp

    if valid_entry?(interest_rate)
      break
    else
      prompt(MESSAGES['valid_entry_error'])
    end
  end

  # Validate duration in years
  years = ''
  loop do
    prompt(MESSAGES['duration_in_years'])
    years = Kernel.gets.chomp

    if valid_entry?(years)
      break
    else
      prompt(MESSAGES['valid_entry_error'])
    end
  end

  # Calculate for monthly interest rate
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12

  # Calculate loan duration_in_years to months
  months = years.to_i * 12

  # Calculate monthly payment
  monthly_payment = compute_monthly_pay(amount, monthly_interest_rate, months)

  # Display result
  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  # Ask for another calculation
  prompt(MESSAGES['calculate_again'])
  answer = Kernel.gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
