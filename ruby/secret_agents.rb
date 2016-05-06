#Create method to encrypt that advances every letter one forward.
#ex input "abc def"  ex output "bcd efg"


def encrypt(code)
index = 0
	while index < code.length
		if code[index] == " "
		elsif code[index] == "z"
			code[index] = "a"
		else
			code[index] = code[index].next!
		end
		index += 1
	end
	return code
end

#Create method to decrypt that reverses the process of .encrypt

def decrypt(code)
index = 0
	while index < code.length
		if code[index] == " "
		elsif code[index] == "a"
			code[index] = "z"
		else
			current = "abcdefghijklmnopqrstuvwxyz".index(code[index])
			code[index] = "abcdefghijklmnopqrstuvwxyz"[current - 1]	
		end
		index += 1
	end
	return code
end

#puts encrypt("password")

#puts decrypt("qbttxpse")

#puts decrypt(encrypt("swordfish"))

valid = false
	until valid
		puts "Would you like to decrypt or encrypt a password?  Type one."
		answer = gets.chomp
		if (answer == "decrypt" || answer == "encrypt")
			valid = true
		end
	end

puts "What's the password?"
password = gets.chomp

if answer == "decrypt"
	puts decrypt(password)
else 
	puts encrypt(password)
end


















