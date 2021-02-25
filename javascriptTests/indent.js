//This is incorrect
if (a) {
      b = c;
    function foo(d) {
        e = f;
    }
}

/*Should look like this
if (a) {
  tab  b = c;
  tab  function foo(d) {
  tab  tab  e = f;
tab }
}
*/