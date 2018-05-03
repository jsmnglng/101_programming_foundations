# Write a method that takes a string, and returns a new string in which every 
# consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and 
# whitespace should not be doubled.

def double_consonants(str)
  new_str = ''
  counter = 0

  loop do
    break if counter == str.size
    char = str[counter]
    if char.match(/[^aeiou\d\W]/)
      new_str << char * 2
    else
      new_str << char
    end
    counter += 1
  end

  new_str
end

# short
def double_consonants(str)
  str.chars.map do |char|
    if char.match(/[^aeiou\d\W]/)
      char * 2
    else
      char
    end
  end.join
end
p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
