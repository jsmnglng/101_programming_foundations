# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, value|
  value.each do |word|
    word.chars.each do |letter|
      puts letter if %w(a e i o u).include?(letter)
      # or you could initialize a variable called `vowels` and reference to string "aeiou"
    end 
  end
end
