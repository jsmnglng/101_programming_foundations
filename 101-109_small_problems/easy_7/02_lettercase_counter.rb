# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# one represents the number of characters in the string that are lowercase letters, one 
# the number of characters that are uppercase letters, and one the number of characters 
# that are neither.

def letter_case_count(string)
  counts = { lowercase: 0, uppercase: 0, neither: 0 }
  counter = 0

  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      counts[:neither] += 1
    elsif char == char.downcase
      counts[:lowercase] += 1
    else
      counts[:uppercase] += 1
    end
  end

  counts
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Launch School Solution
def letter_case_count(string)
  counts = {}
  characters = string.chars
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
  counts
end