# What will the following code print, and why? Don't run the code until you
# have tried to answer.

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# Output:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo

# array2 was affected with the modification of array1 because first of all,
# the first each loop copied the elements from array1 to array2 so both
# arrays both arrays refer to the same elements and that leaves us when we
# modify either array1 or array2, their elements will get affected because
# again, both arrays points to the same String objects.

# Further Exploration:
# How can this feature of ruby get you in trouble? How can you avoid it?
# You can get confused easily on what object's being mutated or not. You can
# avoid this by being careful and practice how mutation works in Ruby. You
# could always check the object's id by using the method `object_id` if
# you're unsure about what object is being mutated or not. Charot.
