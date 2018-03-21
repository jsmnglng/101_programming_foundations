# Given a string that consists of some words and an assortment of 
# non-alphabetic characters, write a method that returns that string with all 
# of the non-alphabetic characters replaced by spaces. If one or more 
# non-alphabetic characters occur in a row, you should only have one space in 
# the result (the result should never have consecutive spaces).

# Input: string
# Output: string - replace non-alphabetic characters with spaces
# Constraint: output shouldn't have consecutive spaces when one or more non-aplhabetic characters occur in a row. 

def cleanup(string)
  string.gsub(/\W/, ' ').squeeze
end

cleanup("---what's my +*& line?") == ' what s my line '

# FURTHER EXPLORATION
# If you originally wrote this method with regular expressions, try writing it 
# without regular expressions.

NON_ALPHABETIC = ['~', '`', '!', '@', '#', '$', '%', '^', '&', '*', '(', ')', '"', "'", ':', '+', '=', '{', '}', '[', ']', '|', '\\', ';', '<', '>', ',', '.', '?', '/', '-']

def cleanup(string)
  clean_string = string.chars.map do |char|
    if NON_ALPHABETIC.include?(char)
      char = ' '
    else
      char
    end
  end
  clean_string.join.squeeze
end

p cleanup("---what's my +*& line?")

# not so pretty code, but it works.. :p