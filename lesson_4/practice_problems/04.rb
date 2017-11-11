# What is the return value of each_with_object in the following code? Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# {'"a" => "ant", "b" => "bear", "c" => "cat"} because value[0] is "a", "b" and "c" when iterated which will be the keys of the hash and then the values will be 'ant' then 'bear' and then 'cat'
