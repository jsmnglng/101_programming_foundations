# Write a method named 'xor' that takes two arguments, and returns `true` if
# exactly one of its arguments is truthy, `false` otherwise

# - Input: two arguments that evaluate to booleans
# - Output: boolean
# value1 == true  & value2 == true  => false
# value1 == false & value2 == false => false
# value1 == true  & value2 == false => true
# value1 == false & value2 == true  => true

# Example
# xor?(5.even?, 4.even?) == true
# xor?(5.odd?, 4.odd?) == true
# xor?(5.odd?, 4.even?) == false
# xor?(5.even?, 4.odd?) == false

def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

puts xor?(5.even?, 4.even?)
puts xor?(5.odd?, 4.odd?)
puts xor?(5.odd?, 4.even?)
puts xor?(5.even?, 4.odd?)

# shorter version:
def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)
end
