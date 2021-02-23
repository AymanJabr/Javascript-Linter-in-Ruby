//This is incorrect
if (a){
    b();
}

function a(){}

for (;;){
    b();
}

try {} catch(a){}

class Foo{
  constructor(){}
}

/*Should look like this
if (a) {
    b();
}

function a() { }

for (; ;) {
    b();
}

try { } catch (a) { }

class Foo {
    constructor() { }
}
*/