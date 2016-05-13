#Compiled a nested hash filled with hashes and some arrays of computer specifications. 
Computers = {
	George: {
		cpu: {
			company: 'intel',
			model: 'i7'
		},
		gpu: {
			company: 'Nvidia',
			model: 'GTX980 Ti'
		},
		additional_components: [
			'water cooler', 'ssd'
		]	
},
	Amy: {
		cpu: {
			company: 'AMD',
			model: 'FX8350',
		},
		gpu: {
			company: 'Radeon',
			model: 'R9 390X DirectX'
		},
		additional_components: [
			'multiple case fans'
		]
},
	James: {
		cpu: {
			company: 'intel',
			model: 'i3'
		},
		gpu: {
			company: 'PowerColor Go!',
			model: 'HD 5440'
		},
		additional_components: [
			'computer speakers','audio tuner','beat pad'
		]
	}
}

#Digs into the 'Computer' array for some information
puts "James' cpu info:"
p Computers[:James][:cpu]

puts "Georges 2nd-in-the-list additional computer component"
p Computers[:George][:additional_components][1]

puts "Amy's gpu company"
p Computers[:Amy][:gpu][:company]
