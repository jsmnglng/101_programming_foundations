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

GET loan amount
GET interest rate
GET duration in years

# Calculate for monthly interest rate
annual_interest_rate = interest_rate / 100
monthly_interest_rate = annual_interest_rate / 12

# Calculate for duration in months
months = years * 12

# Calculate monthly payment
monthly_payment = amount * (monthly_interest_rate / (1 - (1 +
                  monthly_interest_rate)**-months))

PRINT monthly payment

END
```

### Revisions
* Modified variable names
* Input number validation
