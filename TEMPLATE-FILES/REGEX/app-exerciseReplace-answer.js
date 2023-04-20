/*
Create a new array that shows the names with the firstname and then the surname.
*/

let names = ["Smith, James", "Peterson, Alyssa", "Johnson, Lynette", "Lopez, Tony"];

let newNames = names.map(function(name) {
    return name.replace(/(\w+), (\w+)/, "$2 $1");
});