class Santa

	def initialize(gender, ethnicity)
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

	def celebrate_birthday
		age + 1
	end

	def instance
		puts "Santa is #{@age} years old."
	end
end

santas = {}
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
santas.each do |santa|
	puts "Initializing Santa instance #{santas.length}..."
	Santa.new = santas >> {santa.length => [example_genders, example_ethnicities]}
	puts "There are now #{santas.length}."
end

# #Driver code
# Test_santa = Santa.new
# Test_santa.eat_cookies("chocolate-chip")
# Test_santa.speak

