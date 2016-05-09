# Ask user how many employees will be processed and loop through the
# survey process for that many entries

puts "How many new employees will you be processing?\nPlease type a number."
new_employees = gets.chomp.to_i

entries = 0
until entries == new_employees

	# Ask user for information of new employee
	puts "Enter the next employee's responses to the following questions:"
	
	puts "What is your name?"
	name = gets.chomp
	
	puts "How old are you?"
	age = gets.chomp.to_i
	
	puts "What year were you born?"
	birthyear = gets.chomp.to_i
	
	puts "Our company cafeteria serves garlic bread. Should we order some for you?"
	garlic = gets.chomp
	
	puts "Would you like to enroll in the company’s health insurance?"
	health = gets.chomp

	# Add section asking for new employee's alergies screening for 'sunshine.'
	# Add a result variable that will skip later evaluations if sunshine is
	# listed as an allergy.
	
	allergy = nil
	result = nil

	until allergy == "done" || result == "Probably a vampire."
		puts "Please list your alergies one at a time, hitting 'Enter' after each.\nType 'done' when finished."
		allergy = gets.chomp
		if allergy == "sunshine"
			result = "Probably a vampire."
		end
	end

	# To shorten if statments hereafter, make age, garlic and health boolean.
	# First assign age calculated from birth-year-answer to variable: age_math
	# Allow that the new employee may not have had his birthday yet this year.

	age_math = Time.now.year - birthyear

	if (age == age_math) || (age == age_math - 1)
		honest_age = true
	else 
		honest_age = false
	end
	
	if garlic == "yes"
		garlic = true
	else
		garlic = false
	end
	
	if health == "yes"
		health = true
	else
		health = false
	end
	
	# Check value of variable 'result'.  These evaluations only need to run
	# if sunshine was not listed as an allergy.

	if result == nil
	
	# Write conditional statements to run first three evaluations.
	
		if honest_age && (garlic || health)
			result = "Probably not a vampire."
		elsif !honest_age && ( !garlic || !health) && !( !garlic && !health)
			result = "Probably a vampire."
		elsif !honest_age && !garlic && !health
			result = "Almost certainly a vampire."
		else
			result = nil
		end
		
		# Write conditional statement for last two evaluations.  
		# Must do seperately for name check to be run in order specified in challenge, 
		# otherwise if any of first three were met, name check would not run.
		
		if name == "Drake Cula" || name == "Tu Fang"
			result = "Definitely a vampire."
		elsif result == nil
			result = "Results Inconclusive"
		end

	end
	
	puts result
	
	entries += 1
end

# Add plot twist

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."





