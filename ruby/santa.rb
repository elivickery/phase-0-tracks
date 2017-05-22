class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		puts "Initializing Santa instance...this Santa is #{gender} and #{ethnicity}."
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_milk_and_cookies(cookie_type)
		puts "That was a good #{cookie_type}!"
	end

end

santas = []
genders = ["genderqueer", "male", "female", "agender","multi-gender"]
ethnicities = ["multiracial","black","caucasian","latino","chinese"]
genders.length.times do |i|
  puts "Santa ##{i}:"
  santas << Santa.new(genders[i], ethnicities[i])
end