//This is incorrect
foo(
    "one",
    "two", "three"
);

bar(
    "one",
    "two", {
    one: 1,
    two: 2
}
);

baz(
    "one",
    "two", (x) => {
        console.log(x);
    }
);

/*Should look like this
foo("one", "two", "three");
// or
foo(
    "one", "two", "three"
);

bar("one", "two", { one: 1, two: 2 });
// or
bar("one", "two", {
    one: 1,
    two: 2
});

baz("one", "two", (x) => {
    console.log(x);
});





*/