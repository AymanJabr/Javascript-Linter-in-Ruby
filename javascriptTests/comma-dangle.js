//This is incorrect
var foo = {
    bar: "baz",
    qux: "quux",
};

var arr = [1, 2,];

foo({
    bar: "baz",
    qux: "quux",
});

//Should look like this
// var foo = {
//     bar: "baz",
//     qux: "quux"
// };

// var arr = [1, 2];

// foo({
//     bar: "baz",
//     qux: "quux"
// });