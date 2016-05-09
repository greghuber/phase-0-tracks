#Prompts how many times the loop will run
puts "How many interviews will there be?"
int_total = gets.chomp.to_i
total_vampires = 0

#Interview for potential vampires
until total_vampires == int_total
	puts "New interviewee, what is your name?"
	name = gets.chomp

		if name == "Drake Cula" || name == "Tu Fang"
			name = false
		else
			name = true
		end

	puts "How old are you?"
	trueage = gets.chomp.to_i

	puts "What is your birthday year?"
	bday = gets.chomp.to_i
		
		if trueage == (2016 - bday)
			trueage = true
		else
			trueage = false
		end

	puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
	bread = gets.chomp

		if bread == "y"
			bread = true
		else
			bread = false
		end

	puts "Would you like to enroll in the company's health insurance? (y/n)"
	health = gets.chomp

	puts "Any particular allergies we should be aware of? Please type 'done' if none, or when you're finished."
	allergies = gets.chomp

	while allergies != "done" && allergies != "sunshine"
		puts "Are you lying to us?"
		allergies = gets.chomp
		end
#Evaluation of interviewee
	if name == false
		puts "Definitely a vampire!"
	elsif trueage && (bread || health)
		puts "Not a vampire!"
	elsif trueage == false && (bread == false || health == false)
		puts "Probably a vampire!"
	elsif trueage == false && bread == false && health == false
		puts "Almost certainly a vampire!"
	else
		puts "Results inconclusive."
	end

	total_vampires += 1
	puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."
end