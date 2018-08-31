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
    @author += "#{names.join(' ')}"
end

# This one authors with separated commas
def add_authors(*names)
    @author += "#{names.join(' ')}"
end
```

### Run through collections

```ruby
movie = { title: '2001', genre: 'sci fi'}
movie.each { |entry, c| puts "#{entry} => #{c}"}
```

### Which methods actually change a collection?

```ruby
a = [1,2,3]
a.reverse

a.reverse!
```

### Staying out of trouble

```ruby
array = [0,-10,-9,5,9]
array.each_index {|i| array.delete_at(i) if array[i] < 0}
puts array

# This code will leave out some negative numbers because because on the loop, it will index each consecutively, but the indexes of the values will shift if a number is delete if < 0, in this case [0,-9,5,9]. -9 is skipped because of the index position shifted.


array = []
array[24601] = "Hello World"

# also take a note when adding elements well past the end of an existing array. In this example, 24602 elements of the array have been created (nil)...

```