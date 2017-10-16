# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters and
# square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Understanding the Problem
# - Input: integer
# - Output: integer

# Example Run
# > Enter the length of the room in meters:
# 10
# > Enter the width of the room in meters:
# 7
# > The area of the room is 70.0 square meters (753.47 square feet).

# Data Structure
# - Number

# Algorithm
# GET length of the room
# GET width of the room
# area = length * width
# Convert area to square feet
#   => in_square_feet = area * 10.7639
# PRINT area of the room

# SQMETERS_TO_SQFEET = 10.7639
#
# puts "> Enter the length of the room in meters:"
# length = gets.to_f
#
# puts "> Enter the width of the room in meters:"
# width = gets.to_f
#
# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)
#
# puts "> The area of the room is #{square_meters} square meters " + \
#      "(#{square_feet} square feet)."

# Further Exploration
# Modify this program to ask for the input measurements in feet, and display
# the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQINCHES = 144
SQFEET_TO_SQCENIMETERS = 929.03

puts "> Enter the length of the room in feet:"
length = gets.to_f

puts "> Enter the width of the room in feet:"
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centimeters = (square_feet * SQFEET_TO_SQCENIMETERS).round(2)

puts "> The area of the room is #{square_feet} square_feet " + \
     "(#{square_inches} square inches; #{square_centimeters} " + \
     "square centimeters)."
