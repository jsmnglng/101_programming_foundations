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

prompt MESSAGES['welcome']
prompt MESSAGES['hr']

loop do # main loop
  # Obtain user input: amount, interest_rate, years
  # Validate loan amount
  loan_amount = ''
  loop do
    prompt MESSAGES['loan_amount']
    loan_amount = Kernel.gets.chomp

    if valid_entry?(loan_amount)
      break
    else
      prompt MESSAGES['valid_entry_err']
    end
  end

  # Validate interest rate
  interest_rate = ''
  loop do
    prompt MESSAGES['interest_rate']
    prompt MESSAGES['interest_rate_ex']
    interest_rate = Kernel.gets.chomp

    if valid_entry?(interest_rate)
      break
    else
      prompt MESSAGES['valid_entry_err']
    end
  end

  # Validate duration in years
  duration_in_years = ''
  loop do
    prompt MESSAGES['duration_in_years']
    duration_in_years = Kernel.gets.chomp

    if valid_entry?(duration_in_years)
      break
    else
      prompt MESSAGES['valid_entry_err']
    end
  end

  # Calculate for monthly interest rate
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12

  # Calculate loan duration_in_years to months
  duration_in_months = duration_in_years.to_i * 12

  # Calculate monthly payment
  monthly_payment = loan_amount.to_f * (monthly_interest_rate / (1 - (1 +
                    monthly_interest_rate)**-duration_in_months))

  # Display result
  prompt "Your monthly payment is: $#{format('%02.2f', monthly_payment)}"

  # Ask for another calculation
  prompt MESSAGES['calculate_again']
  answer = Kernel.gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt MESSAGES['goodbye']
