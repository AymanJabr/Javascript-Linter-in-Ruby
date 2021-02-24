# Javascript-Linter-in-Ruby

This is a simple linter for Javascript written in Ruby, since I am planning to study Javascript in my future studies, I thought that it would be good to make a linter for it
![Screenshot-of-live-demo](./assets/screenshot.JPG)


This linter is based on the [ESLint Stylistic rules](https://eslint.org/docs/rules/#stylistic-issues)

The specific rules that I choose to implement are listed below, these are the issues, that are most likely to face beginners in Javascript

#### Spacing Issues:

array-bracket-spacing (never)
block-spacing (always)
comma-spacing (before:false, after:true)
no-trailing-spaces
computed-property-spacing (never)
func-call-spacing (never)
semi-spacing (before: false, after: true)
key-spacing (beforeColon:false, afterColon:true)
keyword-spacing (before:true, after:true)
indent (tab)
space-before-blocks (always)
space-in-parens (never)


#### Syntax Issues:

camelcase (always)
semi
wrap-regex
prefer-exponentiation-operator


## Instructions

1) Clone or download the files

2) Open the files and go to the "bin" folder, add to it the javascript file you wish to test

3) Add your files instead of './mainTest.js'

4) run "ruby main.rb" inside the bin folder on the command line, make sure to have ruby installed.

## Author 👤

### Ayman Jabr

_[Github](https://github.com/AymanJabr/)

_[LinkedIn](https://www.linkedin.com/in/ayman-jabr-3705a4100/)

## Show your support ⭐️⭐️⭐️

Give a star if you like this project!

## License 📝

This project is [MIT](https://www.mit.edu/~amini/LICENSE.md) licensed.