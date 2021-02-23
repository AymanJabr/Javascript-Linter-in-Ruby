//This is incorrect
var arr = [ 'foo', 'bar' ];
var arr = ['foo', 'bar' ];
var arr = [ ['foo'], 'bar'];
var arr = [[ 'foo' ], 'bar'];
var arr = [ 'foo',
  'bar'
];
var [ x, y ] = z;
var [ x,y ] = z;
var [ x, ...y ] = z;
var [ ,,x, ] = z;


// Should look like this
// var arr = [];
// var arr = ['foo', 'bar', 'baz'];
// var arr = [['foo'], 'bar', 'baz'];
// var arr = [
//   'foo',
//   'bar',
//   'baz'
// ];
// var arr = ['foo',
//   'bar'
// ];
// var arr = [
//   'foo',
//   'bar'];

// var [x, y] = z;
// var [x, y] = z;
// var [x, ...y] = z;
// var [, , x,] = z;