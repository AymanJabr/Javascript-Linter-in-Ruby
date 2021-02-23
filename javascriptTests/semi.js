//This is incorrect
var name = "ESLint"

object.method = function () {
    // ...
}

/*Should look like this
var name = "ESLint";

object.method = function() {
    // ...
};
*/