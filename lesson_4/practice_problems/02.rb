# How does count treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# It counts the number of elements that the block's return value evaluates to
# true. We can find out by using the Ruby Docs or observe it in the irb but to
# be sure, consult the docs.
