# Build a program that displays when the user will retire and how many years
# she has to work till retirement.

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -current age
# -retirement age
# Output: number
# -year of retirement
# -years to go before retirement

# EXAMPLE / TEST CASE
# Input:
# -age: 30
# -retirement age: 70
# Output:
# -year of retirement: 2058
# -years to go before retirement: 40

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Create a constant variable called CURRENT_YEAR that will contain the
#    current year: Time.now.year (Time class from the ruby core library)
# 2. Get the current_age
# 3. Get the retirement_age
# 4. Convert both inputs to integer
# 5. Calculate the years_left before retirement
#    =>  years_left = retirement_age - age
# 6. Calculate the retirement_year
#    => retirement_year = CURRENT_YEAR + years_left
# 7. Display retirement_year and years_left

# CODE

CURRENT_YEAR = Time.now.year

print "What is your age? "
current_age = gets.to_i

print "At what age would you like to retire? "
retirement_age = gets.to_i

years_left = retirement_age - current_age
retirement_year = CURRENT_YEAR + years_left

puts "It's #{CURRENT_YEAR}. You will retire in #{retirement_year}."
puts "You have only #{years_left} years of work to go!"
