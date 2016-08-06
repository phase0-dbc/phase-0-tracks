// write method longestWord that takes an array of words and returns the longest word in the array or longest words if there is a tie
// make variable longest
// loop through the array 
  // if length of current phrase is greater than longest
    // longest equals the length of current phrase
// make variable longestPhraseAry
// loop through the array again
  // if length of current phrase is equal to longest
    // add current phrase to longestPhraseAry
// returns the longest phrase or phrases if there is a tie 

function longestWord(phraseArray) {
  var longest = 0;
  var longestPhraseAry = []
  for (var i = 0; i < phraseArray.length; i++) {
    if (phraseArray[i].length > longest) {
      longest = phraseArray[i].length;
    }
  }
  for (var i = 0; i < phraseArray.length; i++) {
    if (phraseArray[i].length == longest) {
      longestPhraseAry.push(phraseArray[i]);
    }
  }
  return longestPhraseAry.toString();
}

// write function that takes two objects and checks to see the objects share at least one key-value pair
// loop through one object 
  // if other object.hasOwnProperty of the current key and both objects have the same value
    // return true
  // otherwise return false

function shareKeyValuePair(object1, object2) {
  for (var key in object1) {
    if (object2.hasOwnProperty(key) && object1[key] == object2[key]) {
      return true;
    }
  }
  return false;
}

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length
// make variable words (array)
// make a loop that loops as many times as the integer passes in
  // for each loop generate a random number with min 1 and max 10 (which will be the length of the new word)
  // make a loop that loops as many times as the random number
    //for each loop randomly choose a letter from the alphabet and store it in variable newWord
    // assign newWord to current spot in array
    // set newWord to an empty string
// returns words (array)

function stringGenerator(length) {
  var words = [];
  var newWord = "";
  var str = 'abcdefghijklmnopqrstuvwxyz';
  for (var i = 0; i < length; i++) {
    for (var j = 0; j < (Math.floor(Math.random() * 10) + 1); j++) {
      newWord += str[Math.floor(Math.random() * str.length)];
    }
    words.push(newWord);
    newWord = "";
  }
  return words;
}

// DRIVER CODE

// phraseArray1 = ["long phrase","longest phrase", "longest phrase", "longer phrase"];
// longestWithTie = longestWord(phraseArray1);
// console.log(longestWithTie);

// phraseArray2 = ["long phrase","longest phrase", "longer phrase"];
// longest = longestWord(phraseArray2);
// console.log(longest);

// object1 = {name: "Steven", age: 54};
// object2 = {name: "Tamir", age: 54};
// sharesKeyValue = shareKeyValuePair(object1, object2);
// console.log(sharesKeyValue);

// object3 = {name: "Steven", age: 23};
// object4 = {name: "Tamir", age: 54};
// doesntShareKeyValue = shareKeyValuePair(object3, object4);
// console.log(doesntShareKeyValue);

// console.log(stringGenerator(3));

for (var x = 0; x < 10; x++) {
  array = stringGenerator(Math.floor(Math.random() * 10) + 1);
  console.log(array);
  longest = longestWord(array);
  console.log(longest);
  console.log("");
}



  