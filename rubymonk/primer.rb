Everything is an object.

'self' calls which object you are at the moment.
Calling or invoking a method on an object generates a response, this response is always an object.


1.methods to call methods available for the object (1.methods.sort to sort them alhabetically)

include?
start_with?
end_with?
split('')
sub('I','We')
gsub('I','We')
'RubyMonk'.gsub(/[aeiou]/,'1') # R1byM1nk
'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0') # 0uby0onk 0s 0retty 0rilliant

map
select
delete
delete_if

'RubyMonk Is Pretty Brilliant'.match(/ ./) # I
'RubyMonk Is Pretty Brilliant'.match(/ ./, 9) # P

1.class
"".class
[].class

1.is_a?(Integer) # true
1.is_a?(Class) # false
1.method("next") #<Method: Integer#next>
1.method("even?") #<Method: Integer#even?>

next_method_object = 1.method("next")
puts next_method_object.call

def add(*numbers)
  numbers.inject(0) { |total, number| total + number }
end

puts add(1)
puts add(1, 2)
puts add(1, 2, 3)
puts add(1, 2, 3, 4)

def add(a_number, another_number, yet_another_number)
  a_number + another_number + yet_another_number
end

numbers_to_add = [1, 2, 3] # Without a splat, this is just one parameter
puts add(*numbers_to_add)

def add(*numbers)
  numbers.inject(0) { |sum, number| sum + number }
end

#
def add_with_message(message, *numbers)
  "#{message} : #{add(*numbers)}"
end

puts add_with_message("The Sum is", 1, 2, 3)


# Lambdas: funtion without a name, it's a piece of code we can store in a variable and is an object.
# Block: a piece of code that can't be stored in a variable and is not an object. Faster than a lambda but not as versatile, and one of the rate instances where Ruby's everything is an object rule is broken :(

l = lambda {'Do or do not'}
# same as
l = lambda do
  'Do or do not'
end

end

l.call

l = lambda do |string|
  if string == 'try'
    return 'Hi'
  else
    return 'Yo'
  end
end

l.call('try')



