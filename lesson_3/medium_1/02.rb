# The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)

# Because the result of `(40 + 2)` is an integer and when the code is
# being puts-ed, it is being concatenated to a string and there is no
# implicit conversion of the result into a string.

puts "the value of 40 + 3 is " + (40 + 2).to_s
puts "the value of 40 + 3 is #{40 + 2}"
