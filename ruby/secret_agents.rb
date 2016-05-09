#Encrypt:
# -Set alphabet to a string
# -Set starting index to 0
# -While the current position in the string is less than the string length, advance the index of the alphabet
# -Return proceeding letter in alphabet
# -End encrypt
# -Print the encrypted password

# Decrypt:
# -Set alphabet to a string
# -Set starting index to 0
# -While the current position in the string is less than the string length, advance the index of the alphabet
# -Return previous letter in alphabet
# -End decrypt
# -Print the decrypted password

puts "Would like to encrypt or decrypt a password?"
option = gets.chomp

if option == "encrypt"
option = "encrypt"
end

if option == "decrypt"
option = "decrypt"
end

puts "Please provide your password"
response = gets.chomp

if option == "encrypt"


def encrypt(entry)
   a = "abcdefghijklmnopqrstuvwxyz"
   index=0
   while index < entry.length
       item=entry[index]
       position=a.index(item)

       	if entry[index] == "z"
           entry[index] = "a"
       	else
           entry[index] = a[position].next!
       	end
       	index += 1
   	end
   	return entry
end
translate = encrypt(response.dup)
puts translate
end	

if option == "decrypt"
def decrypt(new_entry)
  a = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < new_entry.length
    item = new_entry[index]
    position = a.index(item) 
    new_entry[index] = a[position-1]
    index += 1
  end
  return new_entry
end
reverted = decrypt(response.dup)
puts reverted
end

#User interface:
#Prompt user for encrypt or decrypt 
#If encrypt:
	#Run encrypt method

#If decrypt:
	#Run decrypt method

#Print encrypted or decrypted password
#End Program

puts decrypt(encrypt("swordfish"))
#First the swordfish is encrypted to a new password, and then decrypted back into swordfish.
#The methods are mirror-opposites, so they produce the same product as the starting material. 