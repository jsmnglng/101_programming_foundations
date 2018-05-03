# Write a method that takes a non-empty string argument, and returns the 
# middle character or characters of the argument. If the argument has an odd 
# length, you should return exactly one character. If the argument has an even 
# length, you should return exactly two characters.

def center_of(str)
  middle_char = ''
  mid_index = str.size / 2

  if str.size.even?
    middle_char = str[mid_index - 1] + str[mid_index]
  else
    middle_char = str[mid_index]
  end

  middle_char
end

# short
def center_of(str)
  mid_index = str.size / 2
  str.size.even? ? str[mid_index - 1] + str[mid_index] : str[mid_index]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'