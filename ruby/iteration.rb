# Release 0

def add_numbers
	number01 = 5
	number02 = 3
	puts "This method takes a block to determine how to process two numbers."
	yield(number01, number02)
	puts "That is the result of taking the block."
end

add_numbers { |number01, number02| puts "#{number01} plus #{number02} is equal to #{number01 + number02}."}

# Release 1

cities = ["Chicago", "New York", "Denver", "Detroit"]

mascots = {michigan: "wolverines", wisonsin: "badgers", colorado: "buffalos"}

# array using .each
puts "Using .each on an array"
p cities
cities.each { |city| puts city }
p cities

# array using .map
puts "Using .map on an array"
p cities
cities.map! do |city| 
	city.upcase
end
p cities

# hash using .each
puts "Using .each on a hash"
p mascots
mascots.each { |school, team| puts school, team }
p mascots








