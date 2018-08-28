# Chapter 2 - Control Structure

- `unless` takes less mental energy to read and understand. A backward `if` statement.
- `until` is negative doppelganger of `while`.
- Use the modifier forms where appropriate: `puts 'Hello' unless greeting == 'Bye'`
- Use `each`, not `for` in loops.
- Case statement (switch): essentially returns the value for the specific case. It uses `===` for comparisons.
  - Use it to identify instances, on the class of an object `when Document`.
  - Also on regular expressions `when /War And . */`.
  - if you supply your own conditions might as well use an if/elsif statement. `when title == 'War and Peace'`.
- Only `false` and `nil` are treated as `false`.
