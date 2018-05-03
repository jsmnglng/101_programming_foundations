# Write a method that takes a positive integer as an argument and returns that 
# number with its digits reversed.

# input: positive int
# output: reversed type of the input
# process: turn the input into its reversed type

# given the number called num
# 1. convert num to string type
# 2. initialize an empty array called `arr_num`
# 3. iterate through each character of the string starting from the last element
#    -convert each num to integer
#    -place each num to `arr_num`
# 4. return the value of `arr_num`

# def reversed_number(num)
#   str_num = num.to_s
#   arr_num = []
#   counter = str_num.size-1

#   loop do
#     break if counter < 0
#     char = str_num[counter]
#     arr_num << char
#     counter -= 1
#   end

#   arr_num.join.to_i
# end

# short
def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1