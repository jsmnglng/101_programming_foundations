# Problem solving approach for Mortgage Calculator Assignment

## Program: Mortgage Loan Calculator

### Understanding the Problem:
* Input: number
  * loan amount (float)
  * APR (float)
  * loan duration (integer)
* Output: float
  * monthly payment
* Using the inputs, calculate:
  * monthly interest rate (float)
  * loan duration in months (integer)
* Given formula: `m = p * (j / (1 - (1 + j)**(-n)))`
  * m = monthly payment
  * p = loan amount
  * j = monthly interest rate
  * n = loan duration in months

### Example Run
```
=> Welcome to Mortgage Calculator!
=> -------------------------------------------
=> What is the loan amount?
100,000
=> What is the interest rate?
=> (Example: 5 for 5% or 2.5 for 2.5%)
5
=> What is the loan duration (in years)?
30
=> Your monthly payment is: $536.82
=> Another calculation (Y to calculate again)?
=> No.
```

### Data Structure:
* Number

### Algorithm
```
START

# Obtain user input: loan amount, interest rate, duration in years
# Validate loan amount
LOOP
  GET loan_amount

  IF valid_number?(loan_amount)
    exit loop
  ELSE
    PRINT "Must enter positive number."

# Validate interest rate
LOOP
  GET interest_rate

  IF valid_number?(interest_rate)
    exit loop
  ELSE
    PRINT "Must enter positive number."

# Validate duration in years    
LOOP
  GET duration in years

  IF valid_number?(loan_amount)
    exit loop
  ELSE
    PRINT "Must enter positive number."

# Calculate for monthly_interest_rate
annual_interest_rate = interest_rate / 100
monthly_interest_rate = annual_interest_rate / 12

# Calculate for duration in months
duration_in_months = duration_in_years * 12

# Calculate monthly payment
monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 +
                  monthly_interest_rate)**-duration_in_months))

PRINT monthly_payment

# Ask for another calculation
GET answer

IF answer starts with == 'y'
  restart main loop
ELSE
  exit main loop

PRINT Goodbye

END
```

### Revisions
* Changed `Float#round` to `Kernel#format`
* Input number validation
* Extracted messages (`prompt()`) to a configuration file
* Removed optional parentheses
