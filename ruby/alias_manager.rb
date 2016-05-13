# Write a method that takes a spy's real name and creates a code name by:
# 0) Swapping the first and last name, then
# 1) Leaving all spaces as spaces.
# 2) Changing all vowels to the next vowel in 'aeiou', and 
# 3) changing all consonants to the next consonant in the alphabet. 

# Example input: "Felicia Torres" Example output: "Vussit Gimodoe"
#________________________________________________________________________


# Turn real name into array to reverse items.  Rejoin into string and
# make all letters lowercase to process.  Assign to variable swap_name.

# Iterate through swap_name applying rules for spaces, vowels and consonants.

# Turn revised swap_name into array to capitalize each item then rejoin
# into string.  Assign to variable code_name to return.