# Chapter 6 - Symbols to Stand for Something

- Strings and symbols are interchangeable in real life code.
- Two different purposes:
  1. To hold some data we are processing. Ex. We have a database with a bunch of string data.
  2. Represent things in our programs. Ex. things like wanting to find all of the records in a table, using `:all` in ActiveRecord, the code needs to know which records to return, and `:all` is a flag for it.
- There can only ever be one instance for any given symbol. It is always equal to itself no matter how its referred.
  - This is different when calling a string.
- Symbols are also immutable
- Side note: the `Hash` class has special defences built in in, so if there's a key defined, it cannot be changed!
- `.to_s` and `.to_sym`