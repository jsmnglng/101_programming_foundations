# Build a program that asks a user for the length and width of a room in meters
# and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

SQMETERS_TO_SQFEET = 10.7639

puts "=> Enter the length of the room in meters:"
length = gets.to_f

puts "=> Enter the width of the room in meters:"
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "=> The area of the room is #{square_meters} " \
     "square meters (#{square_feet} square feet)."
     
# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -length; width
# Output: number
# -area
# Rules
# -Display the area in both square meters and square feet
# -Don't worry about validating the input

# EXAMPLE / TEST CASE
# Input:
# -length: 10
# -width: 7
# Output:
# -area: 70.0 square meters (753.47 square feet)

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Create a constant variable called 'SQMETERS_TO_SQFEET' that will contain
#    the value of 10.7639
# 2. Get the length in meters
# 3. Get the width in meters
# 4. Convert length input to a float number
# 5. Convert width input to a float number
# 6. Create a variable called 'square_meters' that will contain the area in
#    square meters
# 7. Compute the area in square meters
#    => square_meters = length * width
# 8. Create a variable called 'square_feet' that will contain the area in quare
#    feet
# 9. Compute the area in square feet
#    => square_feet = square_meters * SQMETERS_TO_SQFEET
# 10. Round to the nearest hundredth square_meters
# 11. Round to the nearest hundredth square_feet
# 12. Display the area in square_meters and square_feet

# CODE
SQMETERS_TO_SQFEET = 10.7639

puts "=> Enter the length of the room in meters:"
length = gets.to_f

puts "=> Enter the width of the room in meters:"
width = gets.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "=> The area of the room is #{square_meters} " \
     "square meters (#{square_feet} square feet)."

# FURTHER EXPLORATION
# Modify this program to ask for the input measurements in feet, and display
# the results in square feet, square inches, and square centimeters.

# 1. Create a constant variable called SQFEET_TO_SQINCHES, containing 144
# 2. Create a constant variable called SQFEET_TO_SQCENIMETERS, containing 929.03
# 3. Get the length in feet and convert it to a float number
# 4. Get the width in feet and convert it to a float number
# 5. Calculate the area in square_feet
# 6. Calculate the area in square_inches
# 7. Calculate the area in square_centimeters
# 8. Round to the nearest hundredth square_feet, square_inches and
#    square_centimeters
# 9. Display the area in square_feet, square_inches and square_centimeters

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENIMETERS = 929.03

puts "=> Enter the length of the room in feet:"
length = gets.to_f

puts "=> Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_feet * SQFEET_TO_SQCENIMETERS).round(2)

puts "=> The area of the room is #{square_feet} square_feet " \
     "(#{square_inches} square inches; #{square_centimeters} " \
     "square centimeters)."
