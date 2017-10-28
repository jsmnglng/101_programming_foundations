# Write a method that returns true if the string passed as an argument is a
# palindrome, false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(input)
  input.reverse == input
end

# string input
palindrome?('madam') == true
palindrome?('Madam') == false
palindrome?("madam i'm adam") == false
palindrome?('356653') == true
# array input
palindrome?(['m', 'a', 'd', 'a', 'm']) == true
palindrome?(['M', 'a', 'd', 'a', 'm']) == false
palindrome?(["madam", "i'm", "adam"]) == false
palindrome?(['3', '5', '6', '6', '5', '3']) == true
