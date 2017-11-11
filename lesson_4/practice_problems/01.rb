# What is the return value of the select method below? Why?

[1, 2, 3].select do |num|
  num < 5
  'hi'
end

# => [1, 2, 3] because 'hi' is the return value and 'hi' is a truthy value so
# select returns a new array containing the original array's elements.
