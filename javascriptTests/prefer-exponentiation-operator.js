//This is incorrect
const foo = Math.pow(2, 8);

const bar = Math.pow(a, b);

let baz = Math.pow(a + b, c + d);

let quux = Math.pow(-1, n);

/*Should look like this
const foo = 2 ** 8;

const bar = a ** b;

let baz = (a + b) ** (c + d);

let quux = (-1) ** n;
*/