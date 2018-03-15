# Write a method that determines and returns the ASCII string value of a string
# that is passed in as an argument. The ASCII string value is the sum of the
# ASCII values of every character in the string. (You may use String#ord to
# determine the ASCII value of a character.)

# Input: String
# Output: Number - sum of ASCII values of every character in the string
# Don't forget about space

def ascii_value(string)
  sum = 0
  string.each_char { |char| sum += char.ord }
  sum
end

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# FURTHER EXPLORATION
# There is an Integer method such that:
char.ord.mystery == char
# where mystery is our mystery method. Can you determine what method name
# should be used in place of mystery?

# -The mystery method is the Integer#chr method. It returns the string
# equivalent of the int ASCII value.


# What happens if you try this with a longer string instead of a single
# character?

# - #ord will only execute the first character. Example:
"Launch School".ord.chr == "Launch School" # is false because
"Launch School".ord     # returns "L" and so
"Launch School".ord.chr # returns 76 which is the ASCII value of "L" the first
                        # character in the string.
