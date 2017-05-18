# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

def print_the_array(array)
	i = 0
	array.each do |item|
		print item
		if (i < array.length - 1)
			print ' * '
		end
		i += 1
	end
end

print_the_array(zombie_apocalypse_supplies)

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def alphabetize(array)
	i = 0
	while i < array.length

		i2 = i + 1
		while i2 < array.length
			if array[i].downcase > array[i2].downcase
				array[i], array[i2] = array[i2], array[i]
			end
			i2 += 1
		end
		i += 1
	end

	return array
end

puts alphabetize(zombie_apocalypse_supplies)


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def do_we_have_zombie_supplies(list)
	puts "What item are you looking for?"
	item = gets.chomp.to_s
	
	item_in_list = false
	
	list.each do |list_item|

		if list_item == item
			item_in_list = true
		end
	end

	if item_in_list == true
		return "We have that item."
	else
		return "That item isn't in our supplies."
	end
end

puts do_we_have_zombie_supplies(zombie_apocalypse_supplies)

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----

def only_the_essentials(list)
	essentials = []
	i = 0
	list.each do |item|
		essentials << item
		if i == 4
			break
		end
		i += 1
	end

	puts 'Only the essential 5 items:'
	return essentials
end


puts only_the_essentials(zombie_apocalypse_supplies)

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# # ----

def combine_our_supplies(my_supplies, your_supplies)
	combined_supplies = (my_supplies + your_supplies).uniq
end

puts combine_our_supplies(zombie_apocalypse_supplies,other_survivor_supplies)

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----
def print_animals(array)
	array.each { |key, value|
		print key.to_s + ' - ' + value.to_s + ' * '
	}
end

print_animals(extinct_animals)

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----

def only_before_2000(array)
	before_2000 = {}

	array.each { |key, value|
		if value < 2000
			before_2000[key] = value
		end
	}
	array = before_2000
end

puts only_before_2000(extinct_animals)

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----
extinct_animals.each { |key, value|
	extinct_animals[key] = value - 3

}

puts extinct_animals

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----
animals_to_check = ['Andean Cat','Dodo','Saiga Antelope']

def are_they_extinct(list1,list2)
	list1.each do |animal|
		animal_is_extinct = false
		list2.each { |key, value|
			if animal == key
				animal_is_extinct = true
				break
			end
		}

		if(animal_is_extinct)
			puts "The " +animal+ " is extinct."
		else
			puts "The " +animal+ " is still kickin'."
		end

	end
end

are_they_extinct(animals_to_check,extinct_animals)




# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----
def delete_an_item(item,list)
	item_to_delete = list.select{|key| key == item}

	list.delete(item_to_delete)

	item_to_delete.to_a
end

puts delete_an_item('Passenger Pigeon',extinct_animals)

