def fake_name(given_name)
	switched_name = given_name.downcase.split(' ')
	switched_name[0], switched_name[1] = switched_name[1], switched_name[0]

	vowels = ["a","e","i","o","u"]
	alphabet = ("a".."z").to_a
	consonants = alphabet - vowels

	switched_name.map! do |name_part|

		name_part = name_part.chars()
		
		name_part.map! do |letter|

			if vowels.include? letter

				if letter == 'u'
					letter = vowels[0]
				else
					letter = vowels[vowels.index(letter) + 1]
				end

			elsif consonants.include? letter

				if letter == 'z'
					letter = consonants[0]
				else
					letter = consonants[consonants.index(letter) + 1]
				end

			end

		end

		name_part.join

	end

	switched_name = switched_name[0].capitalize + ' ' + switched_name[1].capitalize

	return given_name + ' is also known as ' + switched_name
end


def fake_name_interface
	while true
		puts 'Enter a name (or type "quit" to exit)'
		given_name = gets.chomp
		break if given_name == 'quit'
		puts fake_name(given_name)
	end
end


fake_name_interface