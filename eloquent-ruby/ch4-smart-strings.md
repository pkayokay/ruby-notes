# Chapter 4 - Smart Strings

### Coming up with a string

```ruby
a_string_with_a_quote = 'Say it ain\'t so!'
a_string_with_a_backlash = 'Backlash: \\'
double_quoted = "I have a tab: \t and a new line: \n"

str = %q{"Stop", I can't}

# %Q is a more liberal double-quoted interpretation

yo = <<EOF
This is the begining of my document!
And this is the end.
EOF
# for very long multiline strings

```

### Some methods...
- `.lstrip` returns with leading whitespaces clipped off.
- `.rstrip` returns with whitespace off of the end.
- `.strip` returns with leading and end whitespaces off.
- `.chomp` return copy of the string with at most one newline character. Knocks off one new line.
- `.chop` returns the string without the last character.
- `upcase`, `downcase`, `swapcase`, `capitalize`
- 'It is warm outside'.sub('warm','cold') (one substitution)
- 'yes yes'.gsub('yes','no') (multiple substitutions)
- `split` will split strings on its whitespace, if passed an argument such as ':', it will split it on colons.
- "Hello World".index("World") returns 6 where the word begins