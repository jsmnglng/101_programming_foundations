# Starting with the string:

famous_words = "seven years ago..."

# show two different ways to put the expected "Four score and " in front
# of it.

"Four score and " + famous_words
# or
famous_words.prepend("Four score and ")
# or
"Four score and " << famous_words
# or
"Four score and #{famous_words}"
