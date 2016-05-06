#Ask new employee questions
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

#Assign age calculated from birth-year answer to variable age_math
age_math = Time.now.year - birthyear

#To shorten if statments hereafter, make garlic and health boolean
if garlic == "yes" || garlic == "Yes"
	garlic = true
else
	garlic = false
end

if (health == "yes" || health == "Yes")
	health = true
else
	health = false
end

#result = nil
#Write conditional statements to run first three evaluations.  Allow that the new employee
#may not have had his birthday yet this year.

if ((age == age_math) || (age == age_math - 1)) && (garlic || health)
	result = "Probably not a vampire."
elsif ((age != age_math) && (age != age_math - 1)) && ( !garlic || !health) && !( !garlic && !health)
	result = "Probably a vampire."
elsif ((age != age_math) && (age != age_math - 1)) && !garlic && !health
	result = "Almost certainly a vampire."
else
	result = nil
end

#Write conditional statement for last two.  Must do seperately for name check to be run in
#order specified in challenge, otherwise if first three were met, would not get to name

if (name == "Drake Cula") || (name == "Tu Fang")
	result = "Definitely a vampire."
elsif result == nil
	result = "Results Inconclusive"
end

puts result









