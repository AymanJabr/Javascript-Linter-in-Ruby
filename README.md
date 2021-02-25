# Javascript-Linter-in-Ruby

This is a simple linter for Javascript written in Ruby, since I am planning to study Javascript in my future studies, I thought that it would be good to make a linter for it
![Screenshot-of-live-demo](./assets/screenshot.JPG)


This linter is based on the [ESLint Stylistic rules](https://eslint.org/docs/rules/#stylistic-issues)

The specific rules that I choose to implement are listed below, these are the issues, that are most likely to face beginners in Javascript

### Spacing Issues:

#### array-bracket-spacing (never)
Good code:
`var arr = ['foo', 'bar'];`
Bad code:
`var arr = [ 'foo', 'bar' ];`

#### block-spacing (always)
Good code:
`function foo() { return true; }`
Bad code:
`function foo() {return true; }`

#### comma-spacing (before:false, after:true)
Good code:
`var foo = 1, bar = 2;`
Bad code:
`var foo = 1 , bar = 2;'`

#### no-trailing-spaces
Good code:
`var foo = 0;`
Bad code:
`var foo = 0;   `<= spaces at the of line

#### computed-property-spacing (never)
Good code:
`obj[foo]`
Bad code:
`obj[foo ]`

#### func-call-spacing (never)
Good code:
`fn();`
Bad code:
`fn ();`

#### semi-spacing (before: false, after: true)
Good code:
`var foo;`
Bad code:
`var foo ;`

#### key-spacing (beforeColon:false, afterColon:true)
Good code:
`var obj = { "foo": 42 };`
Bad code:
`var obj = { "foo" :42 };`

#### keyword-spacing (before:true, after:true)
Good code:
`if (foo) {`
Bad code:
`if(foo) {`

#### indent (tab)
Good code:
`    b = c;`
Bad code:
`      b = c;`

#### space-before-blocks (always)
Good code:
`if (a) {`
Bad code:
`if (a){`

#### space-in-parens (never)
Good code:
`foo();`
Bad code:
`foo( );`



### Syntax Issues:

#### camelcase (always)
Good code:
`var myFavoriteColor = "#112C85";`
Bad code:
`var my_favorite_color = "#112C85";`

#### wrap-regex
Good code:
`return (/foo/).test("bar");`
Bad code:
`return /foo/.test("bar");`

#### prefer-exponentiation-operator
Good code:
`const foo = 2**8;`
Bad code:
`const foo = Math.pow(2, 8);`



## Instructions

1) Clone or download the files and unzip them

2) Open the files and go to the "bin" folder, add the Javascript file that you wish to test to the bin folder.

3) On line 9 in the "main.rb" file, instead of "./mainTest.js" add the path to the JavascriptFile you wish to test.

4) Make sure that you have ruby installed on your local machine, [as seen here](https://www.ruby-lang.org/en/documentation/installation/)

5) Using a terminal, navigate to the "bin" folder in the main file, and run "ruby main.rb".

6) This will give you all the errors that the linter has found in your Javascript file.

## Testing with RSpec
This Linter implementation makes use of RSpec in order to test each of its linter methods, in order to test the methods with RSpec:

1) Make sure to have RSpec installed on your local machine, [as seen here](https://github.com/rspec/rspec)

2) Navigate to the "spec" folder in the main file, using a terminal.

3) run "RSpec tests_rspec.rb" or
 "RSpec tests_rspec.rb --format d"

4) The terminal should tell you how many tests passed, how many failed, and why they failed

## Author 👤

### Ayman Jabr

_[Github](https://github.com/AymanJabr/)

_[LinkedIn](https://www.linkedin.com/in/ayman-jabr-3705a4100/)

## Show your support ⭐️⭐️⭐️

Give a star if you like this project!

## License 📝

This project is [MIT](https://www.mit.edu/~amini/LICENSE.md) licensed.