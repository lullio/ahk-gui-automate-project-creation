
let password = "NsRN3/>zvd";

let checkPass = function(password) {
    let theLength = /^.{8,32}$/,
        upper = /[A-Z]/,
        lower = /[a-z]/,
        numbers = /[0-9]/,
        special = /[!"#$%&'()*+,\-./:;<=>?@[\\\]^_`{|}~]/;

    if (theLength.test(password) &&
        upper.test(password) &&
        lower.test(password) &&
        numbers.test(password) &&
        special.test(password)
    ) {
        return true;
    } else {
        return false;
    }
};

console.log(checkPass(password));