# What is the block's return value in the following code? How is it
# determined? Also, what is the return value of any? in this code. What gets
# output by this code?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# => true
# this is determined by the last expression num.odd? because if the block
# returns a "truthy" value for any element in the collection, then the method
# will return true.

# Output: 1 because once any? method saw a truthy return value of the block,
# it will stop iterating since there is no need to evaluate the remaining
# items in the array.
