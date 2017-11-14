# Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flinstones Rock"

# ex:

# { "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ...}

frequency = {}
statement = statement.split.join
counter = 0
loop do
  break if counter == statement.size
  current_char = statement[counter] # "T", "h", "e" etc
  if frequency.has_key?(current_char)
    frequency[current_char] += 1
  else
    frequency[current_char] = 1
  end
  counter += 1
end

# or

statement.split.join.each_char do |char|
  if frequency.has_key?(char)
    frequency[char] += 1
  else
    frequency[char] = 1
  end
end

# or

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
