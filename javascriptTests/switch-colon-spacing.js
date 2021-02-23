//This is incorrect
switch (a) {
    case 0 :break;
    default :foo();
}

/*Should look like this
switch (a) {
    case 0: break;
    default: foo();
}
*/