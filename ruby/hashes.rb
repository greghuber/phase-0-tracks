# Program to allow interior designer to enter details of a given client:

# Format responses to input questions so that:
# name, city, and decor theme are strings,
# age, number of chilren, and sq ft of home are integers, and
# whether the client was a referral, whether the home is a single family as 
# opposed to multi-unit, and whether the client insists on feng shui are boolean.

# Create hash to hold client details.

client_details = {}

# Ask user questions, formatting responses and populating the hash as you go

puts "What is the client's name?"
client_details[:name] = gets.chomp

puts "What is the client's age?"
client_details[:age] = gets.chomp.to_i

puts "What is the client's city?"
client_details[:city] = gets.chomp

puts "How many children does the client have?"
client_details[:children] = gets.chomp.to_i

puts "Enter whether the client was a referral, yes or no."
if gets.chomp == "yes"
	client_details[:referral] = true
else
	client_details[:referral] = false
end

puts "How many square feet is the home?"
client_details[:square_feet] = gets.chomp.to_i

puts "Is the home single-family and not mulit-unit, yes or no?"
if gets.chomp == "yes"
	client_details[:single_family] = true
else
	client_details[:single_family] = false
end

puts "What is the client's decor theme?"
client_details[:decor_theme] = gets.chomp

puts "Does the client insist on feng shui, yes or no?"
if gets.chomp == "yes"
	client_details[:feng_shui] = true
else
	client_details[:feng_shui] = false
end

p client_details