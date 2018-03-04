# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back
# in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the
# following output 10 times, with the subsequent line intended 1 space to
# the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

counter = 0
space = ""
string = "The Flintstones Rock!"

while counter < 10
  puts space + string
  space += " "
  counter += 1
end

# or
10.times { |number|  puts (' ' * number) + "The Flintstones Rock!" }
