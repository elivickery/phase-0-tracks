// Method: Find longest string
// Input: Array of strings
// Steps:
    // Create empty variable 'longestString' representing the longest string
    // For through each item in the array
        // Loop through all items and compare item length to length of longestString
        // If item is longer than longestString, reassign longestString = item
    // Return longestString

// function findLongest(array) {

//     var longestString = "";

//     for(var i = 0; i < array.length; i++) {

//         if(array[i].length > longestString.length) {
//             longestString = array[i];
//         }
//     }

//     return(longestString);

// }

// var testArray = ["long phrase","longest phrase","longer phrase"];

// var testArray2 = ["hello","hello world","hello cruel world","goodbye cruel world"];

// var testArray3 = ["123","1234","1","12345","123456"];

// console.log(findLongest(testArray));

// console.log(findLongest(testArray2));

// console.log(findLongest(testArray3));


// ---------------------------

// Method: Check whether two objects share a key-value pair
// Input: two objects
// Steps:
    // Set a variable 'result' equal to false
    // For each key-value pair in object1
        // Loop through each key-value pair in object2
            // If object1 key-value pair == object2 key-value pair, set result equal to true
    // Return the result variable


