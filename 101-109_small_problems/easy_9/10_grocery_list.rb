# Write a method which takes a grocery list (array) of fruits with quantities 
# and converts it into an array of the correct number of each fruit.

def buy_fruit(grocery_list)
  items = []
  counter = 0

  loop do
    break if counter == grocery_list.size
    fruit = grocery_list[counter][0]
    quantity = grocery_list[counter][1]
    loop do
      break if quantity == 0
      items << fruit
      quantity -= 1
    end
    counter += 1
  end

  items
end

# short
def buy_fruit(grocery_list)
  items = []

  grocery_list.each do |item|
    fruit = item[0]
    quantity = item[1]
    quantity.times { items << fruit }
  end

  items
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])
