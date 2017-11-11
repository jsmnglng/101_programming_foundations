# What is the block's return value in the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# => [1, nil, nil]
# because in the first iteration, 1 is evaluated to false and 1 is the return
# value then the rest (2, 3) are true and puts num's return value is nil and
# it's the last expression in the condition therefore the return value of the
# block is [1, nil, nil]
