
#client: the client's name, age, number of children, decor theme, and so on (you can choose your own as long as it's a good mix of string, integer, and boolean data).

client = {
	name: "Kamrin Klauschie",
	age: 26,
	number_of_children: 0,
	decor_theme: "Modern",
	color_preferences: "Natural",
	materials_preferences: "Natural"
}

# Prompt the designer/user for all of this information. Convert any user input to the appropriate data type.

puts "What is the client's name?"
client_name = gets.chomp
client[:name] = client_name 
puts "What is the client's age?"
client_age = gets.chomp
client[:age] = client_age.to_i
puts "How many children does the client have?"
client_children = gets.chomp
client[:number_of_children] = client_children.to_i
puts "What is the client's decor theme?"
decor_theme = gets.chomp 
client[:decor_theme] = decor_theme
puts "What is the client's color preferences?"
color_preference = gets.chomp
client[:color_preferences] = color_preference
puts "What is the client's materials preferences?"
materials_preference = gets.chomp
client[:materials_preference] = materials_preference

# Print the hash back out to the screen when the designer has answered all of the questions.
p client 


#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! 

puts "What would you like to change?"
key_to_change = gets.chomp 
if key_to_change != "none"
  puts "What would you like to name the change?" 
  new_value = gets.chomp
  current_value = client[key_to_change.to_sym]
  if current_value.instance_of?(Fixnum)
    new_value = new_value.to_i
  end
  client[key_to_change.to_sym] = new_value
end

# Print the latest version of the hash, and exit the program. 
p client