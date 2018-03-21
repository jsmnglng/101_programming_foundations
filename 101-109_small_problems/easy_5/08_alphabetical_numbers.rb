# Write a method that takes an Array of integers between 0 and 19, and returns an Array 
# of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, 
# thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end

# Problem Solving Approach
# Input: array of integers
# output: sorted array
# sort the english words of each integer in the array

# Example:
# Input: (0..19).to_a
# Output: [ 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17, 6, 16, 10, 13, 3, 12, 2, 0 ]
# sorted numbers: eight, eighteen, eleven, fifteen, and so on...

# Algorithm

# Convert numbers(in an array) into words
# 1. Create a hash called NUMBERS_IN_WORDS containing key: digit, value: english word 
#        of the digit. e.g. {1 => "one"}
# 2. Create an empty array called number_words
#    2.1 Iterate through each element of input array
#        -If array's element is one of the keys of NUMBERS_IN_WORDS 
#          -insert the value of the corresponding key in number_words
# 3. Return number_words

# Sort the number words in the array and convert each back into an Integer
# 1. Create an empty array called sorted_numbers
# 2. Create variable called sorted_words and sort the word numbers array 
# 3. Iterate through NUMBERS_IN_WORDS
#    3.1 convert back the elements of sorted_words into an integer
#    3.2 insert each corresponding key in sorted_numbers
# 4. Return sorted_numbers


NUMBERS_IN_WORDS = {
  0 => 'zero', 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five', 
  6 => 'six', 7 => 'seven', 8 => 'eight', 9 => 'nine', 10 => 'ten', 
  11 => 'eleven', 12 => 'twelve', 13 => 'thirteen', 14 => 'fourteen', 15 => 'fifteen', 
  16 => 'sixteen', 17 => 'seventeen', 18 => 'eighteen', 19 => 'nineteen'
}

def number_to_word(numbers)
  number_words = []
  numbers.each do |number| { number_words << NUMBERS_IN_WORDS[number] }
  number_words
end

def alphabetic_number_sort(numbers)
  sorted_numbers = []
  sorted_words = number_to_word(numbers).sort
  sorted_words.each { |number| sorted_numbers << NUMBERS_IN_WORDS.invert[number] }
  sorted_numbers
end

p alphabetic_number_sort((0..19).to_a)

# or
NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| NUMBER_WORDS[number] }
end