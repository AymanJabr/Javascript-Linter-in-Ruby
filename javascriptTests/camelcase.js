//This is incorrect
import { no_camelcased } from "external-module"

var my_favorite_color = "#112C85";

function do_something() {
    // ...
}

obj.do_something = function () {
    // ...
};

function foo({ no_camelcased }) {
    // ...
};

function foo({ isCamelcased: no_camelcased }) {
    // ...
}

function foo({ no_camelcased = 'default value' }) {
    // ...
};

var obj = {
    my_pref: 1
};

var { category_id = 1 } = query;

var { foo: no_camelcased } = bar;

var { foo: bar_baz = 1 } = quz;

//Should look like this
// import { no_camelcased as camelCased } from "external-module";

// var myFavoriteColor = "#112C85";
// var _myFavoriteColor = "#112C85";
// var myFavoriteColor_ = "#112C85";
// var MY_FAVORITE_COLOR = "#112C85";
// var foo = bar.baz_boom;
// var foo = { qux: bar.baz_boom };

// obj.do_something();
// do_something();
// new do_something();

// var { category_id: category } = query;

// function foo({ isCamelCased }) {
//     // ...
// };

// function foo({ isCamelCased: isAlsoCamelCased }) {
//     // ...
// }

// function foo({ isCamelCased = 'default value' }) {
//     // ...
// };

// var { categoryId = 1 } = query;

// var { foo: isCamelCased } = bar;

// var { foo: isCamelCased = 1 } = quz;