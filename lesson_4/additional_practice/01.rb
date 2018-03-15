# Given the array below

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# Turn this array into a hash where the names are the keys and the values are
# the positions in the array.

flintstones_hash = {}

counter = 0
loop do
  break if counter == flintstones.size

  keys = flintstones[counter]
  flintstones_hash[keys] = counter

  counter += 1
end

# or

flintstones.each do |keys|
  flintstones_hash[keys] = flintstones.index(keys)
end

# or

flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end

p flintstones_hash
# => {"Fred"=>0, "Barney"=>1, "Wilma"=>2, "Betty"=>3, "Pebbles"=>4, "BamBam"=>5}

# or
flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end
