# Chapter 5 - Right String with REgular Expressions


### Matching One Character at a time
- `.` will match any single-character string included `r` and `%` and `~`
- `..` will match any two characters.
- A backlash turns off the special meanings of punctuation characters
  - `\.` will match a literal dot.
  - `3\.14` will match the string version of PI to two decimals, complete with the decinmal
  - `Mr\. Olsen` will match `Mr. Olsen`
- `A.` will match any two-character string that starts with a capital A, AM An At A=.
- `...X` will match any four-character string that ends with an X, UVWX XOOX
- `.r\. Smith` will match `Dr. Smith` and `Mr. Smith`, but not Mrs. Smith.

### Sets, Ranges, and Alternatives
- Sets match any one of a bunch of characters.
  - `[aeiou]` will match any single lowercase vowel
  - `[0123456789]` will match any single digit
  - `[Rr]uss [Oo]lsen` will match with or without leading capitals
  - `[aApP][mM]` to match am or PM and anything in between, aM Pm
- Ranges exits to specfiy the beginning and end of a sequence of characters
  - `[0123456789]` is the same as `[0-9]`
  - If `[0-9]` seems like too much work, there are shorcuts to commong sets:
    - `\d`, so `\d\d` will match any two digit number from 00 to 99.
    - `\w` (word character), will match any letter number or the underscore.
    - `\s` will match any whitespace character: vanilla spaces, tabs, newlines.
- Aternatives separate different parts of your expression
  - `A|B` will match either A or B
  - `AM|PM`will match either AM or PM
  - `A\.M\.|AM|P\.M\.|PM` will match A.M. or AM or P.M. or PM
  - Also use () to set aside alternatives:
    - `The (car|boat) is red` will match `The car is red` as well as `The boat is red`

To sum it up.

`\d\d:\d\d (AM|PM)` is a regular expression used to find time.

"Any string that starts with two digits, followed by a colon, followed by two more digits, followed by a space, then by either AM or PM"


### The Regular Expression Start

- `*` wil match zero or more of the thing that just came before it.
- `AB*` will match AB
- `AB*` will also match ABB as well as ABBBBBBB - it's matching A followed by any number of B's (zero or more of the thing that just came before it)
- `AB*` will also match plain old A, in this case there are zero of the thing that came before it.
- `[aeiou]*` will match any number of vowels.
- `[0-9]* will match any number of digits.


### One of the most widely used of all regular expressions

- `.*` will match any number of characters, anything because `.` tells it to match one single character while `*` tells it to match with zero or more, so in a sense it's the same as `.` and `..` and `...` and so on.
- Some common uses cases
  - `George.*` will match the full name of anythign with the first name George.
  - `.*George` will match the name of anyone with the last name George.
  - `.*George.*` will match both anyone who has George in his name somewhere.

