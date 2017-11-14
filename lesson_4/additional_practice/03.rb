# In the age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# throw out the really old people (age 100 or older).

names = ages.keys
counter = 0
loop do
  break if counter == ages.size
  current_name = names[counter]
  current_age = ages[current_name]
  ages.delete(current_name) if current_age >= 100
  counter += 1
end

# or

ages.delete_if { |_, age| age >= 100 }

# or

ages.keep_if { |_, age| age < 100 }

# or

ages.select! { |_, age| age < 100}

p ages
