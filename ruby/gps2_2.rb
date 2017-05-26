# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Welcome and instructions
  # Accept an input as a string
  # Ask for and set default quantity
  # Split string into keys in a hash (by spaces)
  # Set all values of the hash keys equal to the default quantity
  # Use print method to print the list to the console
# output: hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
    # Identify the name of the hash
    # Check if key already exists and display error message
    # Add a new key based on item name
    # If the quantity is given, enter the quantity as the value of the key
        # Otherwise default value = 1
# output: hash

# Method to remove an item from the list
# input: list, item name
# steps:
    # Identify the name of the hash
    # Check if key exists in the hash, otherwise display error message
    # If key exists, delete from the hash
# output: hash

# Method to update the quantity of an item
# input: list, item name, quantity
# steps:
    # Check if key exists in the hash, otherwise display error message
    # If key exists, update the value to the new quantity
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps:
    # Loop through the hash
    # Display each key-value pair as a statement
# output: hash
