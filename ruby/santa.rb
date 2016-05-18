# Create Santa class with:
# A speak method, an eat_milk_and_cookies method, and an initialize method

class Santa

  def initialize(name, gender, ethnicity)
  	puts "Initializing Santa instance ..."
  	@name = name
  	@gender = gender
  	@ethnicity = ethnicity
  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
    puts "We have a new Santa, #{@name}."
  end

  def speak
  	puts "Ho, ho, ho!  Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
  	puts "That was a good #{cookie} cookie!"
  end

  # setter methods

  	def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(other_reindeer)
  	offender_index = @reindeer_ranking.index(other_reindeer)
	@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(offender_index))
  	puts "After #{other_reindeer}'s behavior the reindeer ranking is now #{@reindeer_ranking}."
  end

  def change_gender=(new_gender)
  	@gender = new_gender
  end

  # getter methods

  def name
  	@name
  end

  def age
  	@age
  end

  def ethnicity
  	@ethnicity
  end

  def gender
  	@gender
  end

end

# Initialize a Santa and verify instance methods

# kris = Santa.new

# kris.speak
# kris.eat_milk_and_cookies("chocolate chip with macadamia nuts")

names = ["Kris", "Melvin", "Emily"]
santas = []
genders = ["agender", "female", "bigender", "male", "N/A"]
ethnicities = ["black", "Latino", "white", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

santas << Santa.new(names[0], genders[3], ethnicities[2])
santas << Santa.new(names[1], genders[0], ethnicities[1])
santas << Santa.new(names[2], genders[1], ethnicities[4])

puts "#{santas[1].name} is #{santas[1].age} years old, is #{santas[1].gender}, and #{santas[1].ethnicity}."
santas[1].celebrate_birthday
santas[1].change_gender = "male"
santas[1].get_mad_at("Vixen")
puts "#{santas[1].name} is #{santas[1].age} years old, is #{santas[1].gender}, and #{santas[1].ethnicity}."

# p santas