def print_some_parameters
	puts "Hello, world!"
	yield("Hello", "World")
end

print_some_parameters{|parameter1, parameter2| puts "What an awesome method! Here are our two parameters: #{parameter1} and #{parameter2}."}


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

#Trying out some methods

numbers = [500,6,12,8,16,121,21,17]
more_favorite_colors = { :Joe => "blue", :Zelda => "red", :Caroline => "pink", :Jenna => "orange", :Jennifer => "blue", :Mitch => "green", :Eli => "blue"}

numbers.delete_if { |number| number < 10 }
p numbers

more_favorite_colors.delete_if { |person, fav_color| fav_color == "red" }
p more_favorite_colors


numbers.keep_if { |number| number > 13}
p numbers

more_favorite_colors.keep_if { |person, fav_color| fav_color == "green" || fav_color == "blue"}
p more_favorite_colors

numbers.select! { |number| number > 16}
p numbers

more_favorite_colors.select! {|person, fav_color| fav_color == "blue"}
p more_favorite_colors

numbers.delete_if{|number| number > 30 ? true : break }
p numbers

more_favorite_colors.delete_if{|person, fav_color| person.length < 5 ? true : break}
p more_favorite_colors