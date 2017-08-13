// Takes a string as a parameter and reverses the string 
function reverseString(str) {
    var splitString = str.split(""); 

// Stores the function in a variable 
    var reverseArray = splitString.reverse(); 
    var joinArray = reverseArray.join("");
    return joinArray; 
}

// Add driver code that calls the function to reverse the string of your choice
console.log(reverseString("hello"));

// Add driver code that prints the variable if some condition is true 
if (1 == 1) {
  console.log("hello");
}