// RELEASE 0:
// Write a function that takes an array of words/phrases and
// returns the longest word in the array.
// 

// Step through array, evaluating the length of each word/phrase.
// With each step, populate a second array, stringLengths, with those values.
// Then find the largest value in the array stringLengths and return the
// word/phrase in the original array with an indexOf that high value.

// If more than one word/phrase has the same max length, return an array
// of those words/phrases


function longestString(array) {
  
  // Create second array whose items are the lengths of the first array's strings

  stringLengths = []

  for (var i = 0; i < array.length; i++) {
    stringLengths[i] = array[i].length;
  }
  
  // Create third array to contain the index of the highest value(s)
  // in the stringLengths array.  At each step, if next value is higher
  // than current high index, replace it, if equal to add to it

  indexHigh = [0]
  
  for (var i = 0; i < (stringLengths.length - 1); i++) {
     
     if (stringLengths[i + 1] > stringLengths[i]) {
       indexHigh = [i + 1];
     } else if (stringLengths[i + 1] >= stringLengths[i]) {
        indexHigh.push(i + 1);
     }
  }

  // Test if more than one word/phrase had the same max length.
  // If only one has the max length, return it, otherwise return
  // an array containing the multiple occurances

  if (indexHigh.length > 1) {
    longest = [];
    for (var i = 0; i < indexHigh.length; i++) {
      longest.push(array[indexHigh[i]]); 
    } 
  } else {
      longest = array[indexHigh];
  }
  return longest;
}





// RELEASE 1:
// Write a function that takes two objects and checks to see if they
// share at least one key-value pair.

// Step through the keys in the first object.  
// At each step, step through the second object and compare k-v to 
// that of the current k-v in the first (so compare all kv pairs 
// in object 2 to the first pair in object 1, then compare all in 
// object 2 to the second in object 1  and so on...)

// If a pair matches return 'true', if none match return 'false'
// Begin with match variable = false and reset only if match found

function kvMatchCheck(object1, object2) {
  
  match = false;
  
  for (var key1 in object1) {
  
    for (var key2 in object2) {
  	
  	  if (key1 == key2 && object1[key1] == object2[key2]) {
  	    match = true;
      } 
    }
  }

  return match;
}


// RELEASE 2: Write a function that takes an integer for length, and 
// builds and returns an array of strings of that given length. 
// The words should be of random length, between 1 letter and 10 letters.

// Initialize an empty array, and add random strings unitl their quantity
// equals the value fed into the function;

// To generate the random-length random string:
// Create a string representing all characters available (allChar)
// Generate a random index within that string by:
// 1. Generate a random number between 0 and 1 (.random),
// 2. Multiply by the number of available chars to 
//    give a random number between 0 and the number of available chars,
// 3. Round down to the nearest whole number (.floor),
// 4. Find the char in allChar at the index number just generated,
// 5. Add that character to the new string, and
// 6. Contiune until the new string reaches the specified length.

// Note: Use a similar process to calculate the random length between
// 1 and 10 (assuring that 0 is not an option)

function randStringArray(words) {
	
  stringArray = [] ;

    for (var i = 0; i < words; i++) {

      var newString = "";
      var allChars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
      length = (Math.floor(Math.random() * 10) + 1);

      for ( var n = 0; n < length; n++ ) {
        
        newString += allChars.charAt(Math.floor(Math.random() * allChars.length));
      } 
      
    stringArray.push(newString) ;
    }
  return stringArray
}



// // RELEASE 0 DRIVER TEST CODE 
console.log("RELEASE 0: Find longest string in given array.");

console.log(longestString(["abc", "defghi", "jklmnopqr"]));

console.log(longestString(["abc", "defghi", "jklmno"]));

console.log(longestString(["Ruby", "I like to code!", "JavaScript"]));
console.log();



// RELEASE 1 DRIVER TEST CODE
console.log("RELEASE 1: Test objects for matching key-value pairs");
console.log();

var steven = {name: "Steven", age: 54};
var tamir =  {name: "Tamir", city: "Chicago", age: 54, height: 65};

console.log("Test where Steven and Tamir share the age 54");
console.log(kvMatchCheck(steven, tamir));
console.log();

var steven = {name: "Steven", age: 54};
var tamir =  {name: "Tamir", city: "Chicago", age: 55, height: 65};

console.log("Test again after Tamir's birthday, he's 55 now");
console.log(kvMatchCheck(steven, tamir));
console.log();

// RELEASE 2 DRIVER TEST CODE
// console.log();

// desiredWords = 5;
// console.log("Call on function to generate " + desiredWords + " random words.");
// console.log(randStringArray(desiredWords));
// console.log();

// desiredWords = 3;
// console.log("Call on function to generate " + desiredWords + " random words.");
// console.log(randStringArray(desiredWords));

console.log("RELEASE 2: Generate 10 arrays of random number of random words.");
console.log("Test for longest string in each.");
console.log();

for (var i = 0; i < 10; i++) {
  desiredWords = (Math.floor(Math.random() * 5) + 1);
  console.log("desiredWords=" + desiredWords);

  array = randStringArray(desiredWords);
  console.log(array);
  console.log(longestString(array));
}






