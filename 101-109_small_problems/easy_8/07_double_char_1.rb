# Write a method that takes a string, and returns a new string in which every 
# character is doubled.

def repeater(str)
  doubled = ''
  counter = 0

  loop do
    break if counter == str.size
    current_char = str[counter]
    doubled << current_char * 2
    counter += 1
  end

  doubled
end

# short
def repeater(str)
  str.chars.map { |char| char * 2}.join
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

