# Given the array below

flinstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.

hashed_flinstones = {}

counter = 0
loop do
  break if counter == flinstones.size

  keys = flinstones[counter]
  hashed_flinstones[keys] = flinstones.index(keys)

  counter += 1
end

# or

flinstones.each do |keys|
  hashed_flinstones[keys] = flinstones.index(keys)
end

# or

flinstones.each_with_index do |name, index|
  hashed_flinstones[name] = index
end

p hashed_flinstones
# => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}
