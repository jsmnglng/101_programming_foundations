# Create a simple tip calculator. The program should prompt for a bill amount
# and a tip rate. The program must compute the tip and then display both the
# tip and the total amount of the bill.

print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = (bill_amount * (tip_rate / 100)).round(2)
total_bill = (bill_amount + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: number
# -bill amount
# -tip rate
# Output: number (float)
# -tip
# -total amount of the bill

# EXAMPLE / TEST CASE
# Input:
# -bill: 200
# -tip rate: 15
# Output:
# tip: $30.0
# tota: $230.0

# DATA STRUCTURE
# number

# ALGORITHM
# 1. Get the bill_amount
# 2. Get the tip_rate
# 3. Convert both input to float numbers
# 4. Calculate the tip
#    => tip = bill_amount * (tip_rate / 100)
# 5. Calculate the total_bill
#    => total_bill = bill_amount + tip
# 6. Display tip and total_bill

# CODE
print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = (bill_amount * (tip_rate / 100)).round(2)
total_bill = (bill_amount + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total_bill}"

# FURTHER EXPLORATION
# Our solution prints the results as $30.0 and $230.0 instead of the more usual
# $30.00 and $230.00. Modify your solution so it always prints the results with
# 2 decimal places.

# Hint: You will likely need Kernel#format for this.

print "What is the bill? "
bill_amount = gets.to_f

print "What is the tip percentage? "
tip_rate = gets.to_f

tip = bill_amount * (tip_rate / 100)
total_bill = bill_amount + tip

puts "The tip is $#{format('%.2f', tip)}"
puts "The total is $#{format('%.2f', total_bill)}"
