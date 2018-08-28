# Chapter 3 - Ruby's Smart Collections

You're likely to find lots and lots of arrays in Ruby programs, there will also be hashes mixed in with those arrays.

### Literal Shortcuts

```ruby
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


### Instant Arrays and Hashes from Method Calls

```ruby
def load_font(name, size = 12)
end

load_font('Paul') # default size of 12 if second argument not passed

# this method will take a completely arbitrary set of arguments
def echo_all(*args)
  args.each { |arg| puts arg }
end

# The two methods below both take authors
# this one takes an array of authors.
def add_authors(names)
    @author += " #{names.join(' ')}"
end

# This one authors with separated commas
def add_authors(*names)
    @author += " #{names.join(' ')}"
end
```

### 