/*
Retrieve the starting index for the match, the length of the match and the actual match.
*/

let phrase = "First number: 32, and a second number 100. Here is the last number 15.",
    matchstart,
    matchlength,
    match;

let result = /\d+/.exec(phrase);

if (result) {
    matchstart = result.index;
    matchlength = result[0].length;
    match = result[0];
}
