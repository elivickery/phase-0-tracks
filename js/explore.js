// REVERSE A STRING

// define a function 'reverseString' that takes one parameter (string)
// create a new empty string new_string
// create a for loop counting down from i = the string length until i = 0:
    // for each letter in the string,
        // add it to the new string
    // return the new string


function reverseString(string) {

    new_string = ''

    for (var i = string.length - 1; i >= 0; i -= 1) {
        new_string += string[i]
    }

    console.log(new_string)

}


reverseString('hello world!')

var hello = "hello"
var goodbye = "goodbye"

if (hello != goodbye) {
    console.log("It's true!")
}
