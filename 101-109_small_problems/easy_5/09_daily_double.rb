# Write a method that takes a string argument and returns a new string that contains the 
# value of the original string with all consecutive duplicate characters collapsed into a 
# single character. You may not use String#squeeze or String#squeeze!.

# Input: string
# Output: new string => same string 
# -collapse into a single char when string has consecutive identical chars
# Rule: create a method for this by not using built-in methods #squeeze or #squeeze!

def crunch(text)
  crunch_text = ''
  index = 0
  text.each_char do |char|
    crunch_text << char if text[index] != text[index + 1]
    index += 1
  end
  crunch_text
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

