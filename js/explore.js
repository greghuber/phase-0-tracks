// Define function to reverse a string
// Assign an output variable to be an empty string
// Take in a string as argument.
// Begin with the last character and add that to the the output string.
// Move forward through the string one character at a time and continue
// to add it to the growing output string.
// Sample input = 'Hello'  Sample output = 'olleH'

function reverse(string) {
  var gnirts = "";
  
  for (var index = string.length-1 ; index >= 0; index--)
    gnirts += string[index];
  return gnirts;
}

// DRIVER TEST CODE

reversedString = reverse("Hello");

if (1 == 1) {
	console.log("'Hello' backwards is '" + reversedString +"'");
}
