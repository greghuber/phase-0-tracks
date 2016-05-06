#Create method to encrypt that advances every letter one forward.
#ex input "abc def"  ex output "bcd efg"


def encrypt(code)
index = 0
	while index < code.length
		if code[index] != " "
			code[index] = code[index].next!
		end
		index += 1
	end
	return code
end

puts "What is your password?"
code = gets.chomp
puts encrypt(code)




#Create method to decrypt that reverses the process of .encrypt


#def encrypt(code)
#index = 0
#	while index < code.length
#		if code[index] != " "
#			code[index] = code[index].next
#		end
#		index += 1
#	end
#end

