# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

# Understanding the Problem
# - Input: float
# - Output: float

# Example Run
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# Data Structure
# - Number

# Algorithm
# START
# GET bill
# GET tip_percentage
# # convert bill and tip to integer
# bill.to_i
# tip_percentage.to_i
# # convert tip_percentage to percent
# tip_percentage = tip_percentage / 100.0
# # Compute for the tip
# tip = bill * tip_percentage
# # Compute for total of tip and bill
# total = bill + tip
# Display tip
# Display total bill

print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"

# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of the more
# usual $30.00 and $230.00. Modify your solution so it always prints the
# results with 2 decimal places.

# Hint: You will likely need Kernel#format for this.

print 'What is the bill? '
bill = gets.chomp
bill = bill.to_f

print 'What is the tip percentage? '
percentage = gets.chomp
percentage = percentage.to_f

tip   = (bill * (percentage / 100))
total = (bill + tip)

puts "The tip is $%0.2f" % [tip]
puts "The total is $%0.2f" % [total]
