## Interior Designer Client Details

def gather_info
	# Greet the user
	puts "Let's gather your client info!"

	# Set up hash
	client_info = {}

	# Get client info
	puts "Client Name:"

	client_info[:name] = gets.chomp.to_s

	puts "Client Age:"

	client_info[:age] = gets.chomp.to_i

	puts "Number of Children:"

	client_info[:children] = gets.chomp.to_i

	puts "Decor theme:"

	client_info[:theme] = gets.chomp.to_s

	puts "Favorite color:"

	client_info[:fav_color] = gets.chomp.to_s

	# Print all hash key/values
	puts client_info

	# Ask whether user needs to update a key
	puts "Do you need to update an item? (If yes, type 'yes'. If no, type 'none')"

	update_item = gets.chomp.downcase

	# If 'yes':
	if(update_item == 'yes')

		#Get key
		puts "Which item needs to be updated?"
		new_key = gets.chomp.to_sym
		
		#Check whether key exists
		if client_info[new_key]
			# Get new value of key
			puts "New value:"
			new_value = gets.chomp

			# Update key/value pair
			client_info[new_key] = new_value

			# Print hash again
			puts "Client info updated."

			puts client_info

		#If key doesn't exist, display error and exit.
		else
			puts "Key does not exist."
		end

	# If 'none':
	else
		puts "Thanks for entering your client info."
	end

end

puts gather_info
