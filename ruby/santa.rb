# Create Santa class with:
# A speak method, an eat_milk_and_cookies method, and an initialize method
  # give read only permission to @age and @ethnicity outside the class
  # and read/write permission to @gender outside the class

  # Release 3: Refactor with attr_ declarations, comment out getter and setter

class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender	

  def initialize(gender, ethnicity)
  	puts "Initializing Santa instance ..."
  	@gender = gender
  	@ethnicity = ethnicity
  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(141)
  end

  def speak
  	puts "Ho, ho, ho!  Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(other_reindeer)
  	offender_index = @reindeer_ranking.index(other_reindeer)
	@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(offender_index))
  	puts "After #{other_reindeer}'s behavior the reindeer ranking is now #{@reindeer_ranking}."
  end

  #def change_gender=(new_gender)
  #    @gender = new_gender
  #end

  #def age
  #  @age
  #end

  #def ethnicity
  #  @ethnicity
  #end

end

# Initialize a Santa and verify instance methods

# Release 2: Call on getter and setter methods to change attributes
# Release 3: Verify still functional after creating attr_reader and attr_accessor

santas = Array.new
genders = ["agender", "male", "female", "bigender", "polygender", "N/A"]
ethnicities = ["black", "latino", "white", "arab", "asian", "native hawaiian", "N/A"]

santas << Santa.new(genders[3], ethnicities[2])
santas << Santa.new(genders[0], ethnicities[1])
santas << Santa.new(genders[1], ethnicities[4])

puts "Santa is #{santas[1].age} years old, is #{santas[1].gender}, and #{santas[1].ethnicity}."
santas[1].speak
santas[1].celebrate_birthday
santas[1].gender = "male"
santas[1].get_mad_at("Vixen")
puts "Santa is #{santas[1].age} years old, is #{santas[1].gender}, and #{santas[1].ethnicity}."
puts " "

# Release 4:
# Write program to create lots of Santas.  Assign genders and ethnicities randomly from
# arrays of choices, and age randomly between 0 and 140.  Print out the data of each 
# Santa's attributes using the instance methods giving access to that data.
# Begin by resetting santas array to empty.

santas = Array.new
counter = 0
  until counter == 1000
    santas << Santa.new(genders[rand(6)], ethnicities[rand(7)])

    puts "The new santa is #{santas[counter].age} years old, is #{santas[counter].gender}, and #{santas[counter].ethnicity}."    
    
    counter += 1

  end




