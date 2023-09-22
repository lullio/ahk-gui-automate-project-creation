/*
Extract all the numbers from this phrase and capture those numbers. Then sum the numbers.
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
