# https://www.ruby-lang.org/en/documentation/quickstart/

# Math is a built-in module for math. It includes similar methods like sin() and tan(), as well as sqrt().
# Square root returns a floating-point number since most of the time this item will not be an integer.


def hi(name = 'World')
  puts "Hello 'k' #{name.capitalize}"
end

hi
hi('paul')

class Greeter
  def initialize(name = 'World')
    @name = name
  end

  def say_hi
    puts "Hi #{@name}"
  end

  def say_bye
    puts "Bye #{@name}, come back!"
  end
end

greeter_with_name = Greeter.new('Paul')
greeter_with_name.say_hi
puts ''
greeter_noname = Greeter.new()
greeter_noname.say_bye

# A class is a blue print to create an object
# When you create an object, you are creating an "instance of a class", "instantiating" a class
# instance variables are hidden inside an object, oo approach to hide away data.

# What kind of methods exist for Greeter objects?
Greeter.instance_methods # will pull up all the methods for the instance, custom ones as well as ones inherited from ancestor classes
Greeter.instance_methods(false) # will not list ancestor methods

# we can check which methods it has
puts greeter_noname.respond_to?('say_hi') # true
puts greeter_noname.respond_to?('examplemethod') # false
# think of .respond_to? as, does this respond_to? this method mentioned? if it does not then it's false.

# Altering Classes

class Greeter
  attr_accessor :name # we are making name available now

  # another way to write this...^
  # attr_reader :name
  # attr_writer :name

  # or this...
  # def name=(name)
  #   @name = name
  # end

end

greeter_with_name.respond_to?('name') # true!
greeter_with_name.respond_to?('name=') # true!

puts greeter_with_name.name
# prints Paul since attr_accessor defined the method name, to get the value, and name=,  to set it.

greeter_with_name.name='Saul' # let's change the name
greeter_with_name.say_hi

file_name = __FILE__ # variable that contains the name of the current file
puts file_name

puts $0 # is the name of the file used to start the program.

