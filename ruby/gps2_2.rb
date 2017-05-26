# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Welcome and instructions
  # Ask for and set default quantity
  # Split string into keys in a hash (by spaces)
  # Set all values of the hash keys equal to the default quantity
  # Use print method to print the list to the console
# output: hash

def create_list(string)
    puts "What is the default item quantity?"
    default_quantity = gets.chomp.to_s
    list_array = string.split(' ')
    list_hash = {}
    list_array.each do |item|
        list_hash[item] = default_quantity
    end

    print_list(list_hash)

    list_hash
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # Identify the name of the hash
    # Check if key already exists and display error message
    # Add a new key based on item name
    # If the quantity is given, enter the quantity as the value of the key
        # Otherwise default value = 1
# output: hash

def add_an_item(list_hash,item_name)
    puts 'Adding the item: #{item_name}.'
    puts 'Specify a quantity or type "default".'
    quantity = gets.chomp.to_s

    if quantity.downcase == 'default'
        quantity = '1'
    end

    puts list_hash

    if !list_hash[item_name]
        puts 'Added the item: #{item_name}.'
        list_hash[item_name] = quantity
    else
        puts 'Item already exists.'
    end

    list_hash

end

# Method to remove an item from the list
# input: list, item name
# steps:
    # Identify the name of the hash
    # Check if key exists in the hash, otherwise display error message
    # If key exists, delete from the hash
# output: hash

def remove_an_item(list_hash,item_name)
    if list_hash[item_name]
        puts "Deleting item: #{item_name}."
        list_hash.delete(item_name)
    else
        puts "Item does not exist."
    end

    list_hash
end

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
    # Check if key exists in the hash, otherwise display error message
    # If key exists, update the value to the new quantity
# output: hash

def update_item_quantity(list_hash,item_name,quantity)
    if list_hash[item_name]
        puts "Updated the quantity of #{item_name} to: #{quantity}."
        list_hash[item_name] = quantity
    else
        puts "Item does not exist."
    end

    list_hash
end

# Method to print a list and make it look pretty
# input: list
# steps:
    # Loop through the hash
    # Display each key-value pair as a statement
# output: hash

def print_list(list_hash)
    list_hash.each do |key,value|
        puts "The quantity of #{key} is: #{value}"
    end
end

## Reflection
# - What did you learn about pseudocode from working on this challenge?
# This GPS was really helpful - I learned a lot about the best strategies and structure for pseudocode.  Setting up the pseudocode with a description, input, steps and output made writing the actual methods really simple.

# - What are the tradeoffs of using arrays and hashes for this challenge?
# Hashes can be more difficult to manipulate than arrays, but it made sense to use a hash for this challenge rather than an array because we needed to be able to associate a quantity (value) with each item (key) in the list.

# - What does a method return?
# A method always implicitly returns the value of the last evaluated statement.

# - What kind of things can you pass into methods as arguments?
# You can pass any object as an argument (but you can't pass a method as an argument, since it's not an object).

# - How can you pass information between methods?
# You can call a method within another method, or use a method to return a value and then use it in another method.

# - What concepts were solidified in this challenge, and what concepts are still confusing?
# I feel pretty confident about methods and hashes now, but I'm not totally sure when to use simple methods like these and when to use classes, etc. Hopefully that will make more sense by the end of this week.
