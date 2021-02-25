//This is incorrect
var foo = 1 , bar = 2;
var arr = [1, 2];
var obj = { "foo": "bar", "baz": "qur" };
foo(a, b);
new Foo(a, b);
function foo(a, b) { }
a, b

/*Should look like this
var foo = 1, bar = 2
    , baz = 3;
var arr = [1, 2];
var arr = [1,, 3]
var obj = {"foo": "bar", "baz": "qur"};
foo(a, b);
new Foo(a, b);
function foo(a, b){}
a, b
*/