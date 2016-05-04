puts "What's the hamster's name?"
name = gets.chomp

puts "On a scale of 1 to 10, how loud is the hamster?"
volume = gets.to_i

puts "What color is its fur?"
color = gets.chomp

puts "Is the hamster adoptable?"
adoptable = gets.chomp

if adoptable == "yes" || adoptable == "Yes"
	adoptable = "The hamster is adoptable."
else
	adoptable = "No, the hamster is not adoptable."
end

puts "How old do you estimate the hampster to be?  If not sure, hit return."
response = gets.chomp

if response != ""
	age = response.to_i
else
	age = nil
end

puts "Name: #{name}"
puts "Estimate Age: #{age}"
puts "Color: #{color}"
puts "Volume: #{volume} out of 10"
puts "Adoptability: #{adoptable}"

