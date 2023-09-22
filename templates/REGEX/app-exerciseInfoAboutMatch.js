/*
Retrieve the starting index for the match, the length of the match and the actual match.
*/

let phrase = "First number: 32, and a second number 100. Here is the last number 15.",
    total = 0;

let result = phrase.match(/\d+/g);

if (result) {
    let num1 = result[0],
        num2 = result[1],
        num3 = result[2];

    total = result.reduce((sum, val) => sum + parseInt(val, 10), 0);
}
