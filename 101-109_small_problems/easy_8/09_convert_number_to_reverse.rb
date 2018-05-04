# Write a method that takes a positive integer as an argument and returns that 
# number with its digits reversed.

def reversed_number(num)
  str_num = num.to_s
  arr_num = []
  counter = str_num.size-1

  loop do
    break if counter < 0
    char = str_num[counter]
    arr_num << char
    counter -= 1
  end

  arr_num.join.to_i
end

# short
def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # Note that zeros get dropped!
p reversed_number(1) == 1