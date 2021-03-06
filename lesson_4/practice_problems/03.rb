# What is the return value of reject in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# => [1, 2, 3] because `puts num`'s return value is nil so the elements have
# been selected.
