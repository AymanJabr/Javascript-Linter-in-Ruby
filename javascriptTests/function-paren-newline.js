//This is incorrect
function foo(
    bar,
    baz
) { }

var foo = function (
    bar, baz
) { };

var foo = (
    bar,
    baz
) => { };

foo(
    bar,
    baz
);

/*Should look like this
function foo(bar, baz) {}

function foo(bar,
             baz) {}

var foo = function(bar, baz) {};

var foo = (bar, baz) => {};

foo(bar, baz);

foo(bar,
  baz);
*/