# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version, and
# every lowercase letter by its uppercase version. All other characters
# should be unchanged.

# You may not use String#swapcase; write your own version of this method.

def swapcase(str)
  str.chars.map { |c| c == c.downcase ? c.upcase : c.downcase }.join
end

p swapcase('CamelCase')
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
