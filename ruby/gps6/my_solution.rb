# Virus Predictor

# I worked on this challenge [by myself].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# Both require and require_relatie allow you to load a file into another file but you use/can 
# only use require_relative if the file you're loading is relative to the file you're loading into.
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # calls instance methods predicted_deaths and speed_of_spread.
  # Returns what the last method called returns which will be nil (puts returns nil)
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # predicts number of deaths from outbreak based on the populations density.
  # Method will return nil because print returns nil
  def predicted_deaths
    # predicted deaths is solely based on population density
    density = 200
    multiplier = 0.4
    until @population_density >= density
      if @population_density < 50
        return print "#{@state} will lose #{(@population * 0.05).floor} people in this outbreak"
      end
      density -= 50
      multiplier -= 0.1
    end
    number_of_deaths = (@population * multiplier).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # determines how fast the virus will spread across the state currently based on the population's density.
  # Method will return nil because puts returns nil.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    density = 200
    speed = 0.5
    until @population_density >= density
      density -= 50
      speed += 0.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  
  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  name = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
  name.virus_effects
end


#=======================================================================
# Reflection Section
#
# in the outer hash the keys are strings but in the nested hash the keys are symbols 
# written with the colon after the word (this is syntactic sugar for keys in hashes)
#
# you can iterate through a hash using any enumerable methods for example the .each method
#
# this GPS really emphasized how instance variables are accessible from anywhere inside the class 
#
# I always feel like I learn when I try to refactor methods 
