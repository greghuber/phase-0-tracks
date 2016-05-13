#Basic variable collecting, used to compile the hash called "Interview" later on. 

puts "Welcome to Developer Interior Design. I'll begin the interview process. What is your name?"
name = gets.chomp.to_sym

puts "Sorry to ask, but how old are you?"
age = gets.chomp.to_i

puts "How many children do you have?"
num_kid = gets.chomp.to_i

puts "Was that question too personal? (y/n)"
q_bool = gets.chomp

if q_bool == "y"
	q_bool = true
else q_bool = false
end

puts "What type of decor would you like?"
decor_theme = gets.chomp.to_sym

interview = {:name => name, :age => age, :num_kid => num_kid, :q_bool => q_bool, :decor_theme => decor_theme}
p interview

#Initial questions completed, now prompts user for any revisions. 

puts "Would you like to re-visit any section to re-enter data? 
Please enter appropriate object name, or none to end"
revise = gets.chomp.to_sym

#Checks if no further changes need to be made. If no changes need to be made, it reprints the hash
#and ends the program. If the user enters in name, age, num_kid, or decor_themes (as a string with no
#additional punctuation), they will be asked for a new value to replace that specific object and the hash is reprinted.
#We were told not to handle additional cases, so in the else portion, I just reprint the hash and end the program. Does not loop. 

if revise == :name || revise == :age || revise == :num_kid || revise == :q_bool || revise == :decor_theme
	interview.delete(:revise)
	puts "What would you like to change it to?"
	interview[revise] = gets.chomp.to_sym
	p interview
else revise == "none"
	puts "Thank you."
	p interview
end

#Pseudocode

#Prompt user for name, age, number of kids, and decor theme.
#Compile data within hash list "Interview."
#Print out compiled hash list.
#Ask user for possible revision of given hash list.
#Revise list as required.
#Reprint updated hash list. 