def print_some_parameters
	puts "Hello, world!"
	yield("Hello", "World")
end

print_some_parameters{|parameter1, parameter2| puts "What an awesome method! Here are our two parameters: #{parameter1} and #{parameter2}."}

