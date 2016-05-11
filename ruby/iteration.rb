def add_numbers
	number01 = 5
	number02 = 3
	puts "This method takes a block to determine how to process two numbers."
	yield(number01, number02)
	puts "That is the result of taking the block."
end

add_numbers { |number01, number02| puts "#{number01} plus #{number02} is equal to #{number01 + number02}."}


