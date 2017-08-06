# Method to create a list

# input: string of items separated by spaces (example: "carrots apples cereal pizza")
#split the string into individual words 
#output: array with each word 
def create_list(items)
	new_list = items.split(" ")

#create an empty hash 
#keys as items, values are the quantity 
# set default quantity
	grocery_hash = {}
	new_list.each do |item|
		grocery_hash[item] = 1 
	end 
	return grocery_hash 
	grocery_hash = hash_list 
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# add items as the key and add optional quantity as the value of the hash 
# output: updated hash 
def add_items(hash_list, item_name, quantity)
	hash_list[item_name] = quantity 
end

# # Method to remove an item from the list
# input hash with the item name as the key 
# output hash with values removed 

def remove_item(hash_list, item_name)
	hash_list.delete(item_name) 
end 

# Method to update the quantity of an item
# input:
# steps:
# output:

def update_quantity(hash_list, item_name, quantity)
	hash_list[item_name] = quantity 
end

# Method to print a list and make it look pretty
# input:
# steps:
# output: 

def print_list(my_grocery_list)
	puts "Here is your grocery list!" 
	puts (my_grocery_list) 
end 

# Create a new list
my_grocery_list = create_list("carrots apples cereal pizza")

# Add the following items to your list
# Lemonade, qty: 2
# Tomatoes, qty: 3
# Onions, qty: 1
# Ice Cream, qty: 4
add_items(my_grocery_list, "lemonade", 2)
add_items(my_grocery_list, "tomatoes", 3)
add_items(my_grocery_list, "onions", 1)
add_items(my_grocery_list, "ice cream", 4)

# Remove the Lemonade from your list
remove_item(my_grocery_list, "lemonade")

# Update the Ice Cream quantity to 1
update_quantity(my_grocery_list, "ice cream", 1)

# Print out your list (Is this readable and nice looking)?
print_list(my_grocery_list)



# What did you learn about pseudocode from working on this challenge?
# Pseudocoding can be really helpful to get you to break down a problem into it's tiniest, 
# most simple components in order to avoid confusion or add unnecessary complexity. 

# What are the tradeoffs of using arrays and hashes for this challenge?
# Using the .split method returns an array, and then you have you figure out how to turn it into a hash.
# For this challenge, the only bummer is that there's not a quick and easy way to turn an array into a hash. 

# What does a method return?
#Methods will return whatever action you tell them to, with the exception of implicit return, in which 
#case it will return built in answers. 

# What kind of things can you pass into methods as arguments?
# You can pass variables, strings, and integers into methods as arguments. 

# How can you pass information between methods?
# You can pass information between methods by using the same variables, and eventually with classes and modules. 

# What concepts were solidified in this challenge, and what concepts are still confusing?
# The differences between hashes and arrays. 
# How to pass information between methods. 
# Correct syntax for hashes and arrays. 
# Built in methods. 

