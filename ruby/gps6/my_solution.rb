# Virus Predictor

# I worked on this challenge with Aji (guide) and Tyler.
# We spent about 1.5 hours on this GPS.

# EXPLANATION OF require_relative
# Includes the data file relative to the current file (a hash of population density and population for each US state)

require_relative 'state_data'

class VirusPredictor

  # State the instance variables and give them values
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calls predicted_deaths and speed_of_spread methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  # Predicts the number of deaths based on state population density and population
  def predicted_deaths
    # predicted deaths is solely based on population density

    thresholds = [50,100,150,200]
    number_of_deaths = 0

    thresholds.each do |threshold|
      if @population_density >= threshold
        number_of_deaths = (@population * threshold/500).floor
      else
        number_of_deaths = (@population * 0.05).floor
      end
    end

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Estimates the speed at which the disease will spread (in months) based on state population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 2.5

    thresholds = [50,100,150,200]

    thresholds.each do |threshold|

      if @population_density >= threshold
        speed -= 0.5
      end

    end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, state|

  variable = VirusPredictor.new(key, state[:population_density], state[:population])

  variable.virus_effects

end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

## - What are the differences between the two different hash syntaxes shown in the state_data file?
# The first (parent) hash uses strings as keys with hashes as the values. The inner nested hash uses symbols as keys and integers as values.
## - What does require_relative do? How is it different from require?
# Require_relative allows you to load a file that is relative to the file containing the statement.
# With require, ../ indicates a path that is relative to your current working directory.
## - What are some ways to iterate through a hash?
# .each do |key, value|, .each_key do |key|, .each_value do |value|
## - When refactoring virus_effects, what stood out to you about the variables, if anything?
# It's important to focus on the variables that are actually needed/used to make sure nothing extra or unneccessary is being included.
## - What concept did you most solidify in this challenge?
# This challenge really helped me understand how to refactor a method with a loop to minimize lines of code and make it simpler.

