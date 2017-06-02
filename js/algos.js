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
            // If object1 key == object2 key and object1 value == object2 value, set result equal to true
    // Return the result variable


function checkForTwins(object1, object2) {

    var result = false;

    for(var key1 in object1) {

        for(var key2 in object2 ) {
            if (key1 == key2 && object1[key1] == object2[key2]) {
                result = true;
            }
        }
    }

    return(result);
}


testObject1 = {name: "Steven", age: 54};

testObject2 = {name: "Tamir", age: 54};

testObject3 = {animal: "Dog", legs: 4};

testObject4 = {animal: "Dog", legs: 3};

console.log(checkForTwins(testObject1, testObject2));

console.log(checkForTwins(testObject3, testObject4));

console.log(checkForTwins(testObject1, testObject3));

console.log(checkForTwins(testObject2, testObject4));


