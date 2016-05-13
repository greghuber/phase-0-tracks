# Write a method that takes a spy's real name and creates a code name by:
# 0) Swapping the first and last name, then
# 1) Leaving all spaces as spaces.
# 2) Changing all vowels to the next vowel in 'aeiou', and 
# 3) changing all consonants to the next consonant in the alphabet. 

# Example input: "Felicia Torres" Example output: "Vussit Gimodoe"
#________________________________________________________________________

def alias_name(real_name)
	# Turn real name into array to reverse items.  Rejoin into string and
	# make all letters lowercase to process.  Assign to variable swap_name.
	
	swap_name = real_name.split(' ').reverse.join(' ').downcase
	
	# Set variables to check for vowels and consonants, including edge cases.
	# Set loop counter to 0.

	vowels = "aeioua"
	consonants = "bcdfghjklmnpqrstvwxyzb"
	counter = 0
	
	# Iterate through swap_name applying rules for spaces, vowels and consonants.
	
	while counter < swap_name.length
	
		if swap_name[counter] == " "
		
		elsif ["a", "e", "i", "o", "u"].include?(swap_name[counter])	
			current = vowels.index(swap_name[counter])
			swap_name[counter] = vowels[current + 1]
			
		else
			current = consonants.index(swap_name[counter])
			swap_name[counter] = consonants[current + 1]
					
		end
	
	counter += 1
	end
	
	# Turn revised swap_name into array to capitalize each item then rejoin
	# into string.  Assign to variable code_name to return.
	
	code_name = swap_name.split(' ').map {|x| x.capitalize }.join(' ')
	
end

# Add user interface that lets a user enter a real name and get an alias back. 
# Let the user do this repeatedly until they decide to quit by typing 'quit'. 

# Add hash data structure to store real-name-spy-name pairs

spy_aliases = Hash.new

puts " "
puts "WELCOME TO THE ALIASINATOR."
puts " "  
puts "Enter a spy's real name to convert to an alias."
puts "When done, enter 'quit'."
puts " "

real_name = nil
until real_name == "quit" 
	
	puts "What is the next spy's real name?"
	real_name = gets.chomp

# Until the user types 'quit' convert name to alias and store both names in
# the hash spy_aliases.

		if real_name != "quit"
			spy_name = alias_name(real_name)
			spy_aliases[real_name] = spy_name
			puts " "
		end
end
	
# Print out all stored spy's real and alias names.

spy_aliases.each { |real_name, alias_name|
	puts "#{alias_name} is actually the spy #{real_name}." }




