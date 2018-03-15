# Amend this array so that the names are all shortened to just the first three
# characters:

flinstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

counter = 0
loop do
  break if counter == flinstones.size
  current_name = flinstones[counter]
  flinstones[counter] = current_name[0, 3]
  counter += 1
end

# or

flinstones.map! { |name| name[0, 3] }

p flinstones

# or

flintstones.map { |name| name[0..2] }
