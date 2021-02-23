//This is incorrect
function foo()
{
  return true;
}

if (foo)
{
  bar();
}

try
{
  somethingRisky();
} catch(e)
{
  handleError();
}


//Should look like this
// function foo() {
//     return true;
// }

// if (foo) {
//     bar();
// }

// if (foo) {
//     bar();
// } else {
//     baz();
// }

// try {
//     somethingRisky();
// } catch (e) {
//     handleError();
// }