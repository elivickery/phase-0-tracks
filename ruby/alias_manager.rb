def fake_name(given_name)
	given_name = given_name.downcase.split(' ')
	given_name[0], given_name[1] = given_name[1], given_name[0]

	vowels = ["a","e","i","o","u"]
	alphabet = ("a".."z").to_a
	consonants = alphabet - vowels

	given_name.map! do |name_part|

		name_part = name_part.chars()
		
		name_part.map! do |letter|

			if vowels.include? letter

				if letter == u
					letter = vowels[0]
				else
					letter = vowels[vowels.index(letter) + 1]
				end

			elsif consonants.include? letter

				if letter == z
					letter = consonants[0]
				else
					letter = consonants[consonants.index(letter) + 1]
				end

			end

		end

	end

	given_name = given_name[0] + ' ' + given_name[1]
end

def fake_name_interface

	puts "Enter a name:"
	given_name = gets.chomp
	puts fake_name(given_name)

end


puts fake_name_interface