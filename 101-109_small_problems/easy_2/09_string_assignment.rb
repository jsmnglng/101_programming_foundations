name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?
# Output:
# BOB
# BOB

# This happened for 2 reasons. First is because of #upcase!. The #upcase!
# (mutable method version of String#upcase) operator mutates the `name`
# variable and it affects `save_name` as well because both variables reference
# the same string object "Bob". Thus, both variables are set equal to 'BOB'.
