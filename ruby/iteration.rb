# def print_some_parameters
# 	puts "Hello, world!"
# 	yield("Hello", "World")
# end

# print_some_parameters{|parameter1, parameter2| puts "What an awesome method! Here are our two parameters: #{parameter1} and #{parameter2}."}

animals = ["cat", "dog", "elephant", "zebra"]

favorite_colors = {:Joe => "blue", :Zelda => "red", :Caroline => "green"}

p animals
p favorite_colors


# Using .each
animals.each do |animal|
	puts "A #{animal} is an animal."
end

p animals

# Using .each
favorite_colors.each do |person, fav_color|
	puts "#{person}'s favorite color is #{fav_color}."
end

p favorite_colors


# Using .map!
animals.map! do |animal|
	animal = animal.upcase
end

p animals