# Virus Predictor

# I worked on this challenge with: Simon.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#
# Require_relative statement is a method in which we call another file for 
# classes or any files or other unique methods we would like to utilize in the 
# current file. Require statement differs from require relative because 
# require_relative states that it's in the relative location of the current file. 
# As for relative is used for a file in a different path, another directory.

STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}

class VirusPredictor
#Initialize every instance with an attribute of state, population, and population density. Each attribute if being fed into each instance through parameters and arguments.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#This method is used to call on other instance methods to return values.
   
  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end

  private

  def predicted_deaths#(population_density, population, state)
    # predicted deaths is solely based on population density
    # If statements evalute population density and multiplies it with a float. It then calls on .floor to bring to a whole integer.
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    #if statement that evaluates a population and sets the speed depending on population density.
    #speed = 0.0

    #Considered using incremented while loops to make more dry instead of if statements, 
    # but in real situations I doubt it would increment by perfect .5
   
    # In loop compare threshold to density, if density less than threshold
    # decrement both
    #threshold = 200
    #speed = 0.5
    #while n <= population_density
    #threshold -= 50
    #speed += 0.5
    #end
    
    
    
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state_name, state_info| 
 state = VirusPredictor.new(state_name, state_info[:population_density], 
 state_info[:population])
 state.virus_effects
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

# The different syntaxes in the state_data hash:
# One uses the actual string for the key, connected to the value, the inner hash
# uses the symbol to represent the key joined in curly brackets with its value
# seperated by a comma

# Require relative accesses code whose file is in the same location as the current file,
# Require necessitates including a specific path to the required file

# One could use .each or .map to step through a hash, or use methods that perform
# specific funtions to items that satisfy certain conditions (e.g. .delete_if will 
# step through the hash and delete key-value pairs if its condition == true)

# It took the guide to point out the obvious, but the instance variables have scope 
# such that they are inherently available to all the methods in the class, therefore
# don't need to be passed in to any as arguments

# Breaking down the code into tasks.  My first instinct was to combine the three methods 
# into one, but I understand better the idea of one method, one purpose.
