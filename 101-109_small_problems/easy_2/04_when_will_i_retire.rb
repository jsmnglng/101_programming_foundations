# Build a program that displays when the user will retire and how many years
# she has to work till retirement.

# Understanding the Problem
# - Input: integer
#          - user's age
#          - user's preferred age retirement
# - Output: integer
#           - year of retirement
#           - years to work till user's retirement

# Example Run
# What is your age? 30
# At what age would you like to retire? 70
#
# It's 2017. You will retire in 2056.
# You have only 40 years of work to go!

# Data Structure
# - Number

# Algorithm
# START
# GET age
# GET age retirement
# SET current_year = current year
# # Calculate years to work till retirement
# years_to_work = age + age_retirement
# # Calculate year of retirement
# year_of_retirement = current_year + years_to_work
# PRINT year of retirement
# PRINT years to work
# END

print 'What is your age? '
current_age = gets.to_i

print 'At what age would you like to retire? '
retirement_age = gets.to_i

current_year = Time.now.year
work_years_to_go = retirement_age - current_age
retirement_year = current_year + work_years_to_go

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{work_years_to_go} years of work to go!"
