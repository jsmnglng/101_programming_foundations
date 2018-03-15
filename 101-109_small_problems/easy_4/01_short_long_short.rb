# Write a method that takes two strings as arguments, determines the longest of
# the two strings, and then returns the result of concatenating the shorter
# string, the longer string, and the shorter string once again. You may assume
# that the strings are of different lengths.

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

# ---------------------------
# PROBLEM SOLVING APPROACH
# ---------------------------

# UNDERSTANDING THE PROBLEM
# Input: strings (2)
# Output: string
# Rules:
# -determine the longest string
# -concatenate the shorter string to the longer string and the shorter string
#  once again

# EXAMPLE / TEST CASE
# Input: "abc", "defgh"
# Output: "abcdefghabc"

# Input: "abcde", "fgh"
# Output: "fghabcdefgh"

# Input: "", "xyz"
# Output: "xyz"

# DATA STRUCTURE
# string

# ALGORITHM
# 1. Determine the longest string:
#    -If string1 is longer than string2,
#       -concatenate string2 + string1 + string2
#    -else,
#       -concatenate string1 + string2 + string1
# 2. Return the concatenated string

# CODE
def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end

p short_long_short('abc', 'defgh')
p short_long_short('abcde', 'fgh')
p short_long_short('xyz', '')
