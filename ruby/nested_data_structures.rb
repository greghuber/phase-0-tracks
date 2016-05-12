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