class Santa

	attr_reader :age, :ethnicity
	attr_accessor :gender

	def initialize(gender, ethnicity, cookies)
		@gender = gender
		@ethnicity = ethnicity
		@cookies = cookies
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
		
	end

	def speak
		puts "Ho, ho, ho! Haaaappy holidays!"
	end

	def eat_cookies(cookies)
		puts "That was a good #{cookies} cookie!"
	end

	def celebrate_birthday
		@age + 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.delete(reindeer)
		@reindeer_ranking << reindeer
		
	end
end

santas = []
puts "How many Santas will be created?"
num_loops = gets.chomp.to_i

gender = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
cookies = ["chocolate-chip", "macadamia", "white-chocolate", "snickerdoodle", "oatmeal-raisin"]
santa = Santa.new(gender, ethnicity, cookies)



num_loops.times {|count| puts "#{santa.speak} Santa #{count + 1} is #{gender.sample}, #{ethnicity.sample} and he/she is #{age = rand(140)} years old. Santa says that was a good #{cookies.sample}!"}

#Creates Santas with new gender and ethnicity based off given arrays
#genders.length.times do |i|
#   puts "Initializing Santa instance #{santas.length}..."
# 	santas << Santa.new(#{genders[i]}, #{ethnicities[i])
#end

#Driver code for various Santa methods
# Test_santa = Santa.new
# Test_santa.eat_cookies("chocolate-chip")
# Test_santa.speak

