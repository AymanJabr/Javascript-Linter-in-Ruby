//This is incorrect
obj[foo]
obj['foo']
var x = { [b]: a }
obj[foo[bar]]

/*Should look like this
obj[foo]
obj['foo']
var x = {[b]: a}
obj[foo[bar]]
*/