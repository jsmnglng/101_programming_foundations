# What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# shift removes the first key-value pair of the hash which is { a: 'ant' } and
# returns it as a two-item array. shift is the opposite of pop. 
