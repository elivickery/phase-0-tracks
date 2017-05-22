class Santa

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

	def gender
		@gender
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age
	end

	def ethnicity
		@ethnicity
	end

end

genders = ["genderqueer", "male", "female", "agender","multi-gender"]
ethnicities = ["multiracial","black","caucasian","latino","chinese"]
genders.length.times do |i|
  puts "Santa ##{i}:"
  santa = Santa.new(genders[i], ethnicities[i])

  puts "This Santa is #{santa.age} and #{santa.ethnicity}."
  if(i % 2 == 0)
  	santa.celebrate_birthday
  	puts "Santa just turned a year older...now they are #{santa.age}!"
  end

  if(i % 3 == 0)
  	santa.gender = genders.sample
  	puts "Santa is now #{santa.gender}. We support your transition, Santa!"
  end

  if(i % 4 == 0)
	santa.get_mad_at("Rudolph")
  end

  puts "\n"

end