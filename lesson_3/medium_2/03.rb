# Let's call a method, and pass both a string and an array as parameters
# and see how even though they are treated in the same way by Ruby, the
# results can be different.

# Study the following code and state what will be displayed...and why:

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# Output:
"My string looks like this now: pumpkins"
"My array looks like this now: pumpkinsrutabaga"

# String returned the original array because inside the tricky_method,
# a_string_param += "rutabaga" is reassignment so a_string_param in the
# method was assigned to a new object so a_string_param and my_string no
# longer points to the same object.  
