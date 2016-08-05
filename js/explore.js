// write method reverse that takes string and reverses it
// loop through the string backwards
// store each character in a variable newString
// the method should return newString

function reverse(string) {
  var newString = "";
  for (var i = string.length - 1; i >= 0; i--) {
    newString += string[i];
  }
  return newString;

}

reverseString = reverse("hello world");

if (1 == 1) {
  console.log(reverseString);
}
