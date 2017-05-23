class Puppy

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
