# Chapter 5 - Right String with REgular Expressions

- `.` will match any single-character string included `r` and `%` and `~`
- `..` will match any two characters.
- A backlash turns off the special meanings of punctuation characters
  - `\.` will match a literal dot.
  - `3\.14` will match the string version of PI to two decimals, complete with the decinmal
  - `Mr\. Olsen` will match `Mr. Olsen`
- `A.` will match any two-character string that starts with a capital A, AM An At A=.
- `...X` will match any four-character string that ends with an X, UVWX XOOX
- `.r\. Smith` will match `Dr. Smith` and `Mr. Smith`, but not Mrs. Smith.