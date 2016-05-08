puts "What is the hamsters name?"
hamstername = gets.chomp

puts "Volume level from 1-10?"
volume = gets.chomp.to_i

puts "Fur color?"
color = gets.chomp

puts "Good candidate for adoption? (yes/no)"
adopt = gets.chomp

puts "Estimated age?"
age = gets.chomp.to_i

if age == 0
	age = nil
end

puts "Your hamsters name is #{hamstername}."
puts "Hamster volume level is #{volume}."
puts "Hamster fur color is #{color}."
puts "Good candidate for adoption? #{adopt}."
puts "Your hamsters estimated age is #{age}."