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
1.method("next") #<Method: Integer#next> gives us the instance of the method, so we can call later.
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


# Modules: allow to create groups of methods that can be included and mixed into a number of classes, only hold behavior, unlike classes, which hold both behavior and state.

# Since these modules cannot be initialized, there's no way to call these methods directly so we include them in another class, which makes them available for the instances of that class
# we can use "include"

module WarmUp
  def push_ups
    "Phew, I need a break!"
  end
end

class Gym
  include WarmUp

  def preacher_curls
    "I'm building my biceps."
  end
end

class Dojo
  include WarmUp

  def tai_kyo_kyu
    "Look at my stance!"
  end
end

puts Gym.new.push_ups
puts Dojo.new.push_ups

#

module Perimeter
  def perimeter
    sides.inject(0) { |sum, side| sum + side }
  end
end

class Rectangle
  # Your code here
  include Perimeter

  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def sides
    [@length, @breadth, @length, @breadth]
  end
end

class Square
  # Your code here
  include Perimeter

  def initialize(side)
    @side = side
  end

  def sides
    [@side, @side, @side, @side]
  end
end


# Default Hash Value
normal = Hash.new
was_not_there = normal[:whatever_value]
puts was_not_there # nil

usually_brown = Hash.new("brown")
pretending_to_be_there = usually_brown[:whatever_value]
puts pretending_to_be_there # "brown" (the default value)




