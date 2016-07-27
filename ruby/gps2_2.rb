# Method to print a list and make it look pretty
# input: hash
# steps: loop through hash
  # print item and quantity
# output: hash

def print_list(hash)
  puts "Grocery list:"
  hash.each {|item, quantity| puts "#{item} - #{quantity}"}
end

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # break string into array separating each value by whitespace
  # loop through array 
    # FOR EACH iteration of loop push item to hash as key
    # assign default value of 1 to each item
  # print the list to the console by calling print method (see below for detail on print method)
# output: hash

def new_grocery_list(items)
  items_array = items.split
  grocery_hash = {}
  
  items_array.each do |item|
    grocery_hash[item] = 1
  end
  
  print_list(grocery_hash)
  
  
end

list = new_grocery_list('apple grape bananas')
# list

# Method to add an item to a list
# input: item name, hash and optional quantity
# steps: push item to hash asign quantity of 1 IF no other value given
# output: hash

def add_item(hash, item, quantity)
  hash[item] = hash[item].to_i + quantity
  hash
end

# p add_item(list, 'kiwi', 3)
# p add_item(list, 'bananas', 2)
# p list

# Method to remove an item from the list
# input: hash and item name
# steps: delete item from hash
# output: hash

def remove_item(hash, item)
  hash.delete(item)
  hash
end

# p remove_item(list, 'apple')
# p list

# Method to update the quantity of an item
# input: item name, hash and quantity
# steps: update item quantity
# output: hash

def update_item_quantity(hash, item, quantity)
  hash[item] = quantity
  hash
end

# puts update_item_quantity(list, 'bananas', 5)

#p list

# What did you learn about pseudocode from working on this challenge?
# What are the tradeoffs of using arrays and hashes for this challenge?
# What does a method return?
# What kind of things can you pass into methods as arguments?
# How can you pass information between methods?
# What concepts were solidified in this challenge, and what concepts are still confusing?

