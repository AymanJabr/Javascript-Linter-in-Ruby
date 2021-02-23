//This is incorrect
/*eslint spaced-comment: ["error", "always"]*/

//This is a comment with no whitespace at the beginning

/*This is a comment with no whitespace at the beginning */
/* eslint spaced-comment: ["error", "always", { "block": { "balanced": true } }] */
/* This is a comment with whitespace at the beginning but not the end*/

// Should look like this

/* eslint spaced-comment: ["error", "always"] */

// This is a comment with a whitespace at the beginning

/* This is a comment with a whitespace at the beginning */

/*
 * This is a comment with a whitespace at the beginning
 */

/*
This comment has a newline
*/

//