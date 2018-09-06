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