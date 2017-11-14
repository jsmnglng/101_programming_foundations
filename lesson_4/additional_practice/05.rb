# In the array:

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Find the index of the first name that starts with "Be"

counter = 0
loop do
  break if counter == flinstones.size
  current_name = flinstones[counter]
  if current_name.include?("Be")
    puts flinstones.index(current_name)
  end
  counter += 1
end

# or

flinstones.bsearch_index { |name| name.include?('Be') }

# or

flinstones.index { |name| name[0, 2] == "Be" }
