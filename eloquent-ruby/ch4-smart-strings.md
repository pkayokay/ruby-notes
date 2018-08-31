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