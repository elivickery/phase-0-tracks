house = {
	kitchen: {
		chairs: 4,
		beds: 0,
		has_sink: true,
		has_toilet: false,
		fridge: ["bread","eggs","milk","tomatoes"]
	},
	bedroom: {
		chairs: 2,
		beds: 1,
		has_sink: false,
		has_toilet: false,
		closet: {
			dresses: 6,
			pants: 2,
			shirts: 8,
			socks: 10
		}
	},
	bathroom: {
		chairs: 0,
		beds: 0,
		has_toilet: true,
		has_sink: true,
		cabinet: ["toothbrush","toothpaste","lotion","powder","comb"]
	}
}

items_in_fridge = house[:kitchen][:fridge].count

puts "There are #{items_in_fridge} items in the fridge."

chairs_in_bedroom = house[:bedroom][:chairs]

puts "There are #{chairs_in_bedroom} chairs in the bedroom."

dresses_in_bedroom_closet = house[:bedroom][:closet][:dresses]

puts "There are #{dresses_in_bedroom_closet} dresses hanging in the bedroom closet."