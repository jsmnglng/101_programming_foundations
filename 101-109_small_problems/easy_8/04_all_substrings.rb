# Write a method that returns a list of all substrings of a string. The
# returned list should be ordered by where in the string the substring begins.
# This means that all substrings that start at position 0 should come first,
# then all substrings that start at position 1, and so on. Since multiple
# substrings will occusr at each postion, the substrings at a given position
# should be returned in order from shortest to longest.

# You may (and should) use the substrings_at_start method you wrote in the
# previous exercise.

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  all_substrings = []
  index = 0

  loop do
    break if index == string.size
    this_substring = string[index..-1]
    all_substrings.concat(substrings_at_start(this_substring))
    index += 1
  end

  all_substrings
end

p substrings('abcde')
