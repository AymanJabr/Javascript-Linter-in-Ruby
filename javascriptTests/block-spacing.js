//This is incorrect
function foo() {return true;}
if (foo) { bar = 0;}
function baz() {let i = 0;
    return i;
}

//Should look like this
// function foo() { return true; }
// if (foo) { bar = 0; }