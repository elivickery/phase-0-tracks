class Santa

	attr_reader :ethnicity
	attr_accessor :age, :gender

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

	def celebrate_birthday
		puts "** Happy birthday, Santa! **"
		@age += 1
	end

	def get_mad_at(reindeer_name)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer_name)))
	end

end


example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese","multiracial"]

100.times do |i|
  puts "Santa ##{i+1}:"
  santa = Santa.new(example_genders.sample, example_ethnicities.sample)

  santa.age = rand(0..140)

  puts "This Santa is #{santa.gender} and #{santa.ethnicity}, and they are #{santa.age} years old."
  if(i % 2 == 0)
  	santa.celebrate_birthday
  	puts "Santa just turned a year older...now they are #{santa.age}!"
  end

  if(i % 3 == 0)
  	santa.gender = example_genders.sample
  	puts "Santa is now #{santa.gender}. We support your transition, Santa!"
  end

  if(i % 4 == 0)
	santa.get_mad_at("Rudolph")
  end

  puts "\n"

end