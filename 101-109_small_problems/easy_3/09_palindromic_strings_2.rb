# Write another method that returns true if the string passed as an argument is a
# palindrome, false otherwise. This time, however, your method should be
# case-insensitive, and it should ignore all non-alphanumeric characters. If you
# wish, you may simplify things by calling the palindrome? method you wrote in the
# previous exercise.

def palindrome?(input)
  input.reverse == input
end

def real_palindrome?(input)
  input = input.downcase.delete('^a-z0-9')
  palindrome?(input)
end

real_palindrome?('madam') == true
real_palindrome?('Madam') == true          
real_palindrome?("Madam, I'm Adam") == true 
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false
