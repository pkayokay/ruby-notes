# Chapter 7 - Everything is an Object

- Classes act as containers for methods, factories for making instances. Once you have instances you can call methods on those instances.
- Virtually al Ruby objects can trace their ancestry back to an `Object`. `class` or `instance_of?`.
- Methods can be public, private or protected.

```ruby

class Document

  private

  def word_count
    return words.size
  end
end

# or

class Document
  def word_count
    return words.size
  end

  private :word_count
end
```

- These `private` methods can only be called from within the class, and subclasses.