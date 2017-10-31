# Write a method that takes two strings as arguments, determines the
# longest of the two strings, and then returns the result of
# concatenating the shorter string, the longer string, and the shorter
# string once again. You may asssum that the strings are of different
# lengths.

# - Input: 2 strings
# - Output: Concatenated strings
# How to determine the longest string?
# How to concatenate the shorter string + longer string + shorter string

# Example
# short_long_short('abc', 'defgh') == "abcdefghabc"
# short_long_short('abcde', 'fgh') == "fghabcdefgh"
# short_long_short('', 'xyz') == "xyz"

# Data Structure
# - Array

# Algorithm
# Compare both strings
# IF string1.length > string2.length
#    short_string = string2
# ELSE
#    long_string = string2
# concat = short_string + long_string + short_string
# return result

def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"
