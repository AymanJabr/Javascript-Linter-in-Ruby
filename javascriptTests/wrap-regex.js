//This is incorrect
function a() {
    return /foo/.test("bar");
}

/*Should look like this
function a() {
    return (/foo/).test("bar");
}
*/