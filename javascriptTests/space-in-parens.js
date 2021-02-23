//This is incorrect
foo( );

foo( 'bar');
foo('bar' );
foo( 'bar' );

foo( /* bar */ );

var foo = ( 1 + 2 ) * 3;
( function () { return 'bar'; }() );

/*Should look like this

foo();

foo('bar');

foo( bar );

var foo = (1 + 2) * 3;
(function () { return 'bar'; }());

*/