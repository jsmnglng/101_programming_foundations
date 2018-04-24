# Write a method that takes two Array arguments in which each Array contains a list of 
# numbers, and returns a new Array that contains the product of every pair of numbers 
# that can be formed between the elements of the two Arrays. The results should be sorted 
# by increasing value.

# You may assume that neither argument is an empty Array.

def multiply_all_pairs(list_1, list_2)
  products = []
  idx_1 = 0

  loop do
    break if idx_1 == list_1.size
    idx_2 = 0
    loop do
      break if idx_2 == list_2.size
      products << list_1[idx_1] * list_2[idx_2]
      idx_2 += 1
    end
    idx_1 += 1
  end
  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2])

# or
def multiply_all_pairs(list_1, list_2)
  list_1.product(list_2).map { |arr| arr.reduce(:*) }.sort
end