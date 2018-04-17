# Write a method that takes an array of strings, and returns an array of the same string 
# values, except with the vowels (a, e, i, o, u) removed.

# input: array of strings
# output: array of the same strings except no vowels
# process: remove vowels from each string in the array

VOWELS = %(aeiouAEIOU)

def remove_vowels(with_vowels)
  no_vowels = []
  idx = 0

  loop do
    break if idx == with_vowels.size
    current_word = with_vowels[idx]
    no_vowels << current_word.delete(VOWELS)
    idx += 1
  end

  p no_vowels
end

# test cases
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']