# Construct nested data structure.  Create structure representing
# a company with three hotels, including data from each in a 
# mixture of hashes and arrays, with various data types



andel_hotels = {
	dressler_inn: {
		name: "Dressler Inn",
		general_manager: "Philip Connors",
		amenities: [
			"Business Center",
			"Health Club",
			"Coffee Bar"],
		room_type: {
			king_bed: 40,
			two_queens: 60
		},
		near_highway: false
	},
	pelletier_hotel: {
		name: "Pelletier Hotel & Suites",
		general_manager: "David Thomas",
		amenities: [
			"Lap Pool",
			"Health Club",
			"Movie Theatre"],
		room_type: {
			suite: 50,
			king_bed: 40,
			two_queens: 30
		},
		near_highway: false
	},
	baker_motel: {
		name: "Baker Motel",
		general_manager: "Carolyn Muth",
		amenities: [
			"Day Care",
			"Airport Shuttle"],
		room_type: {
			king_bed: 20,
			two_queens: 40
		},
		near_highway: true
	}
}

# CALL ON AND/OR MODIFY DATA STRUCTURE WITH VARIOUS COMMANDS

# Retrieve name of Dressler Inn's general manager.
puts " "
puts "Dressler's general manager is #{andel_hotels[:dressler_inn][:general_manager]}."
puts " "

# Retrieve the number of rooms in the Pelletier Hotel.
# Retrieve the number that are suites.

pelletier_rooms = 0
andel_hotels[:pelletier_hotel][:room_type].each do |type, number|
	pelletier_rooms += number
end

puts "The Pelletier has #{pelletier_rooms} rooms."
puts "#{ andel_hotels[:pelletier_hotel][:room_type][:suite] } of those are suites."
puts " "

#Retrieve the number of amenities the Baker Motel lists.

puts "The Baker lists #{ andel_hotels[:baker_motel][:amenities].length } amenities."
puts " "

# The Baker just got Wi-Fi!  Update their data and the above, and list their amenities.

andel_hotels[:baker_motel][:amenities].push("Free Wi_fi")
puts "The Baker now lists #{ andel_hotels[:baker_motel][:amenities].length } amenities."
puts andel_hotels[:baker_motel][:amenities]
puts " "

# Retrieve the list of Andel Hotels near a highway.
# Want output to be result of 2nd puts command but using variable as in first

andel_hotels.each  do |hotel, value| 
	value.each do |k, v|
		if k == :near_highway && v
		puts hotel
		puts "#{andel_hotels[:baker_motel][:name]} is near a highway."
		end
	end
end





