/*
Iterate over each match and log the information to the console.
*/

let phrase = "First number: 32, and a second number 100. Here is the last number 15.";

let regex = /\d+/g,
    match = null;

while (match = regex.exec(phrase)) {
    if (match.index == regex.lastIndex) regex.lastIndex++;
    console.log(match);
    console.log(regex.lastIndex);
}