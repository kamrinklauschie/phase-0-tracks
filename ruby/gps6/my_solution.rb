# Virus Predictor

# I worked on this challenge with Marlo Ito. 
# We spent 3 hours on this challenge.

# EXPLANATION OF require_relative
# Require relative is a way of linking files together that doesn't require the direct file route. 
# Require is a way of linking files together in the current directory, and requires routes. 
#

require_relative 'state_data'

class VirusPredictor

  def self.generate_report(states)
    states.each do |state_name, data|
      state = new(state_name, data[:population_density], data[:population])
      state.virus_effects 
    end 
  end 

# starts the program and defines the instance variables 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# calls other private methods 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

# determines estimated number of deaths based on population density of the state 
# uses print to print a string 
# .floor rounds down to the lower whole number 
  def predicted_deaths
    # predicted deaths is solely based on population density

    max_pop = 200

    # multiplier is 0.05 unless the population density is greater than or equal to 50
    multiplier = 0.05

    # get the minimum of our population or the MAX_POP
    population_density_temp = [@population_density, max_pop].min
    multiplier = 0.1 * (population_density_temp / 50).floor 
     if population_density_temp >= 50
      end
    number_of_deaths = (@population * multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

# determines estimated speed of spread based on population density of the state 
# uses puts to print a string 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
   
  speed = 2.5

  max_pop = 200
   # get the minimum of our population or the MAX_POP
   population_density_temp = [@population_density, max_pop].min

  # speed decreases by 0.5 whenever population density increases by 50
   speed -= 0.5 * (population_density_temp / 50).floor

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

VirusPredictor.generate_report(STATE_DATA)


#=======================================================================
# Reflection Section