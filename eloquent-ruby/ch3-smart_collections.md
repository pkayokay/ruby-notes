# Chapter 3 - Ruby's Smart Collections

You're likely to find lots and lots of arrays in Ruby programs, there will also be hashes mixed in with those arrays.

### Literal Shortcuts

```
## Arrays
poem_words = ['twinkle','little','star','how','I','wonder']
poem_words = %w{ twinkly little star how I wonder }


## Hashes
# general purpose disregarding the types of hash keys
freq = {"I" => 1, "don't" => 1, "like" => 1, "spam" => 963}
# if you need symbols
book_info = {:first_name => 'Russ', :last_name => 'Olsen'}
# it can be cut down to this...
book_info = {first_name: 'Russ', last_name: 'Olsen}

```