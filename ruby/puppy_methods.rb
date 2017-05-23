class Puppy

  def initialize
      puts "Initialize new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(x)
    x.to_i.times { |x| puts "woof"}
  end

  def rollover
    puts '*rolls over*'
  end

  def dog_years(age)
    puts age.to_i * 7
  end

  def play_dead
    puts '**plays dead**'
  end

end


puppy = Puppy.new

puppy.fetch('ball')

puppy.speak(5)

puppy.rollover

puppy.dog_years(7)

puppy.play_dead

class Party_planning

    def initialize
        puts "Get the party started!"
    end

    def decorations
        decoration_array = ['balloons','streamers','confetti','roses']

        decoration_array.each do |decoration|
            puts "We have #{decoration}!"
        end
    end

    def release_the_doves(dove_number)
        puts "Release #{dove_number} doves!!"
    end
end


parties = []

50.times do
    party = Party_planning.new
    parties << party
end

parties.each do |party|
    party.release_the_doves(10)
end
