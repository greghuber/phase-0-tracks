#Makes empty hash for two types of data

name_array = {}
alias_done = false

#looping condition

until alias_done

	puts "Please enter first name, followed by your last name. You may enter 'quit' or 'stop' to end at any time."
	name = gets.chomp
	name_split = name.split('')

	if name == 'quit' || name == 'stop'
		p "Encryption complete."
		alias_done = true
	
	else

#where the encryption takes place

		def encrypt(coded_name)
			coded_name.map! {|letter| letter.next}
			new_string = coded_name.join('')
			new_string['!'] = ' '
			new_string.split(' ')
		end

	encode_name = encrypt(name_split)
	alias_ok = encode_name.join(' ')
	p alias_ok
	name_array.store(name, alias_ok)
	end
end

#printing out compiled hash

name_array.each do |name, alias_ok|
	puts "#{name} is given the code name: #{alias_ok}."

end

# Pseudocode
# -Create empty hash for agent names and corresponding Encryption
# -store real name in variable and split into characters
# -transform each letter to the next letter in the alphabet
# (could not figure out for the life of me how to do double conditions within block syntax, spent ~3hrs messing with it)
# -join each letter together again
# -change the '!' character into a space, as to separate first and last name
# -add addition to empty hash
# -wait for keyword to end program
# -print full hash list	