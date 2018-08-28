# Chapter 1

### Basics:
- **Explicit Code:** good code tells the reader exactly what it is trying to do.

- **Consice:** there's a limit to how much information you can keep in your head, keep it short and sweet.
- **Tabs:** two space rule.
- **Comments:** go easy on them, the code should speak for itself. Avoid them altogether is possible.
- **Naming:** `lowercase_words_separated_by_underscores` for variables, `camelCase` for Classes, `MY_CONSTANT` for constants.
- **Parenthesis:** optional but occasionally forbidden. It's ok when calling a method that is similar (stands alone on its own line, and whose arguments are few).
  `puts('Hello')`

  - `Hello'.split`
  - `if words.size < 100 instead of if (words.size)`

- **Multiple statements on single line:** insert a semicolor between statements. (`print 'hello '; print 'world'`)

- **Code Blocks:**  two forms of code blocks, they are pretty much identical, but if it consist of a single statement, fold it into a single line. Alternatively, use do/end to spread the block out over a number of lines.
