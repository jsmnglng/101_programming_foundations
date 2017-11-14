# Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Mariyln" => 22, "Spot" => 237 }

total_ages = 0

counter = 0
names = ages.keys
loop do
  break if counter == ages.size
  current_name = names[counter]
  current_age = ages[current_name]
  total_ages += current_age
  counter += 1
end

# or

ages.each { |_, age| total_ages += age }

# or

ages.values.inject(:+)

p total_ages
