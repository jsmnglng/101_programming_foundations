# Program: Mortgage Loan Calculator

# Understanding the Problem:
# - Input: number
#           - loan amount (float)
#           - APR (float)
#           - loan duration (integer)
# - Output: float
#           - monthly payment
# - Using the inputs, calculate:
#   - monthly interest rate (float)
#   - loan duration in months (integer)
# - Given formula: m = p * (j / (1 - (1 + j)**(-n)))
#   - m = monthly payment
#   - p = loan amount
#   - j = monthly interest rate
#   - n = loan duration in months

# Example Run
# => Welcome to Mortgage Calculator!
# => -------------------------------------------
# => What is the loan amount?
# 100,000
# => What is the interest rate?
# => (Example: 5 for 5% or 2.5 for 2.5%)
# 5
# => What is the loan duration (in years)?
# 30
# => Your monthly payment is: $536.82
# => Another calculation (Y to calculate again)?
# => No.

# Data Structure:
# - Number

# Algorithm
# GET loan_amount
# GET interest_rate
# GET duration_in_years
# Calcualte for monthly_interest_rate
# Calculate for duration_in_months
# Calculate monthly_payment
# Display monthly_payment

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to Mortgage Calculator!")
prompt("-------------------------------")

loop do
  prompt("What is the loan amount?")
  loan_amount = Kernel.gets().chomp()

  prompt("What is the interest rate?")
  prompt("Example: 5 for 5% or 2.5 for 2.5%")
  interest_rate = Kernel.gets().chomp()

  prompt("What is the loan duration (in years)?")
  duration_in_years = Kernel.gets().chomp()

  # Calculate for monthly interest rate
  monthly_interest_rate = format("%.2f", interest_rate.to_i() / 100.0).to_f() /
                          12

  # Calculate loan duration_in_years to months
  duration_in_months = duration_in_years.to_i() * 12

  # Calculate monthly payment
  monthly_payment = loan_amount.to_i() * (monthly_interest_rate / (1 - (1 +
                    monthly_interest_rate)**-duration_in_months))

  # Display result
  prompt("Your monthly payment is: $#{monthly_payment.round(2)}")

  # Ask for another calculation
  prompt("Another calculation? (Y to caclualte again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using Mortgage Calculator. Goodbye!")
