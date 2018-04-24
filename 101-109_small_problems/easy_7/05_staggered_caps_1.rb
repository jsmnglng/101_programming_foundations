# Write a method that takes a String as an argument, and returns a new
# String that contains the original value using a staggered capitalization
# scheme in which every other character is capitalized, and the remaining
# characters are lowercase. Characters that are not letters should not be
# changed, but count as characters when switching between upper and
# lowercase.

def staggered_case(str)
  new_str = str.chars
  counter = 0

  loop do
    break if counter == new_str.size
    char = new_str[counter]
    counter % 2 == 0 ? char.upcase! : char.downcase!
    counter += 1
  end

  new_str.join
end

#  or

def staggered_case(str)
  str.chars.map.each_with_index do |char, index|
    index % 2 == 0 ? char.upcase : char.downcase
  end.join
end

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Further Exploration
def staggered_case(string, start_case=true)
  result = ''
  string.chars.each do |char|
    if start_case
      result += char.upcase
    else
      result += char.downcase
    end
    start_case = !start_case
  end
  result
end

p staggered_case('I Love Launch School!', false) == 'i lOvE LaUnCh sChOoL!a'
