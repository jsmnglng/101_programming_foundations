name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?
# Output:
# BOB
# BOB

# This happened because of the bang "!" operator that was used. The "!"
# operator mutates the `name` variable and it affects `save_name` as well
# because both variables point to the same string "Bob". Thus, both
# variables are set equal to 'BOB'
