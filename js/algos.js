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
  
  // Create new array whose items are the lengths of the array's strings

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

// DRIVER TEST CODE

console.log(longestString(["abc", "defghi", "jklmnopqr"]));

console.log(longestString(["abc", "defghi", "jklmno"]));

console.log(longestString(["Ruby", "I like to code!", "JavaScript"]));





