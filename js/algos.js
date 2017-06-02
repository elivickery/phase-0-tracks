// Method: Find longest string
// Input: Array of strings
// Steps:
    // Create empty variable 'longestString' representing the longest string
    // For through each item in the array
        // Loop through all items and compare item length to length of longestString
        // If item is longer than longestString, reassign longestString = item

var test_array = ["long phrase","longest phrase","longer phrase"];

var test_array_2 = ["hello","hello world","hello cruel world","goodbye cruel world"];

var test_array_3 = ["123","1234","1","12345","123456"];

function findLongest(array) {

    var longestString = "";

    for(var i = 0; i < array.length; i++) {

        if(array[i].length > longestString.length) {
            longestString = array[i];
        }
    }

    return(longestString);

}

console.log(findLongest(test_array));

console.log(findLongest(test_array_2));

console.log(findLongest(test_array_3));
