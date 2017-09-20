#format string

  formatter = "%{first} %{second} %{third} %{fourth}"
  puts formatter % {first: 1, second: 2, third: 3, fourth: 4}
  puts formatter % {first: 'one', second: 'two', third: 'three', fourth: 'four'}
  puts formatter % {first: true, second: false, third: true, fourth: false}


#escape sequences
  days = "mon tue wed"
  months = "jan\nfeb\nmar"

  puts "here are the days #{days}"
  puts "here are the months #{months}"

  puts %q{
  This is the first line.
  Now this is the second
  }

  tab = "This is a \t tab"
  puts tab
  line = "This is a new \nline"
  puts line
  many_lines = """
  I can put as much text as I want here..

  Cool!
  """
  puts many_lines
  
  
# user prompt

  print "give me a number"
  number = gets.chomp.to_i
  print "give me another"
  number_two = gets.chomp.to_i
  puts "your first number and second equal to #{number + number_two}"
  

# Argument variable ARGV *
# run 'ruby script.rb argument1 argument2 argument3'

  first, second, third = ARGV

  puts "your first is #{first}"
  puts "your second is #{second}"
  puts "your third is #{third}"


# run with only one argument this time

  user_name = ARGV.first
  prompt = '> '
  puts "Hi #{user_name}"
  puts "Do you like Mayo?", "Do You?"
  print prompt
  likes = $stdin.gets.chomp

  puts "So it looks like you your answer is #{likes.upcase}"


# ruby script.rb asdf.txt

  filename = ARGV.first

  file = open(filename)

  puts "here's your file #{filename}:"
  print file.read

  print "Type the file name again: "
  file_again = $stdin.gets.chomp
  file2 = open(file_again)

  print file2.read


# Writing to a file...

  filename = ARGV.first

  puts "We're going to erase #{filename}"
  puts "If you don't want that, hit CTRL-C (^C)."
  puts "If you do want that, hit RETURN."

  $stdin.gets

  puts "Opening the file..."
  target = open(filename, 'w')

  puts "Truncating the file.  Goodbye!"
  target.truncate(0)

  puts "Now I'm going to ask you for three lines."

  print "line 1: "
  line1 = $stdin.gets.chomp
  print "line 2: "
  line2 = $stdin.gets.chomp
  print "line 3: "
  line3 = $stdin.gets.chomp

  puts "I'm going to write these to the file."

  target.write(line1)
  target.write("\n")
  target.write(line2)
  target.write("\n")
  target.write(line3)
  target.write("\n")

  puts "And finally, we close it."
  target.close
  
  
# Copy one file to another

  from_file, to_file = ARGV

  puts "Copying from #{from_file} to #{to_file}"

  in_file = open(from_file)
  indata = in_file.read

  puts "The input file is #{indata.length} bytes long"

  puts "does the output file exist? #{File.exist?(to_file)}"
  puts "Ready, hit RETURN to continue, CTRL-C to abort."

  $stdin.gets

  out_file = open(to_file, 'w')
  out_file.write(indata)

  puts "Alright, all done."

  out_file.close
  in_file.close
  
  
# this one is like your scripts with ARGV
  
  def print_two(*arguments)
    arg1, arg2 = arguments
    puts "arg1: #{arg1}, arg2: #{arg2}"
  end

  print_two('hey', 'yo')

#
  
  def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts " "
  end

  puts "We can just give the function numbers directly:"
  cheese_and_crackers(20,30)

  amount_of_cheese = 10
  amount_of_crackers = 50

  puts "Or we can use variables"
  cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers +1 )

# run against a file, but it must have at least 3 lines, it will read it and then print the first three lines

  input_file = ARGV.first

  def print_all(f)
    puts f.read
  end

  def rewind(f)
    f.seek(0)
  end

  def print_a_line(line_count, f)
    puts "#{line_count}, #{f.gets.chomp}"
  end

  current_file = open(input_file)

  puts "First let's print the whole file:\n"

  print_all(current_file)

  puts "Now let's rewind, kind of like a tape."

  rewind(current_file)

  puts "Let's print three lines:"

  current_line = 1
  print_a_line(current_line, current_file)

  current_line = current_line + 1
  print_a_line(current_line, current_file)

  current_line = current_line + 1
  print_a_line(current_line, current_file)

#
  
  def add(a, b)
    puts "ADDING #{a} + #{b}"
    return a + b
  end

  def subtract(a, b)
    puts "SUBTRACTING #{a} - #{b}"
    return a - b
  end

  def multiply(a, b)
    puts "MULTIPLY #{a} * #{b}"
    return a * b
  end

  def divide(a, b)
    puts "DIVIDING #{a} / #{b}"
    return a / b
  end

  puts "Let's do some math with just functions!"

  age = add(30, 5)
  height = subtract(78, 4)
  weight = multiply(90, 2)
  iq = divide(100, 2)

  puts "Age: #{age}, Height: #{height}, Weight: #{weight}, IQ: #{iq}"


# multiline

  sentence = """
  hey
  hey
  hey
  """
  # interpolated
  sentence = %Q {
  
  }
  # not interpolated 
  sentence = %q {
  
  }


#
  
  def secret_formula(started)
    jelly_beans = started * 500
    jars = jelly_beans / 1000
    crates = jars / 100
    return jelly_beans, jars, crates
  end

  start_point = 10000
  beans, jars, crates = secret_formula(start_point)

  puts beans
  puts jars
  puts crates
  
  
  
  # MODULE 
  
  module Ex25

    # This function will break up words for us.
    def Ex25.break_words(stuff)
      words = stuff.split(' ')
      return words
    end

    # Sorts the words.
    def Ex25.sort_words(words)
      return words.sort
    end

    # Prints the first word after shifting it off.
    def Ex25.print_first_word(words)
      word = words.shift
      puts word
    end

    # Prints the last word after popping it off.
    def Ex25.print_last_word(words)
      word = words.pop
      puts word
    end

    # Takes in a full sentence and returns the sorted words.
    def Ex25.sort_sentence(sentence)
      words = Ex25.break_words(sentence)
      return Ex25.sort_words(words)
    end

    # Prints the first and last words of the sentence.
    def Ex25.print_first_and_last(sentence)
      words = Ex25.break_words(sentence)
      Ex25.print_first_word(words)
      Ex25.print_last_word(words)
    end

    # Sorts the words then prints the first and last one.
    def Ex25.print_first_and_last_sorted(sentence)
      words = Ex25.sort_sentence(sentence)
      Ex25.print_first_word(words)
      Ex25.print_last_word(words)
    end

  end
  
    # run in irb in same directory if below command is used
    require "./ex25.rb"

    sentence = "All good things come to those who wait."
    words = Ex25.break_words(sentence)
    words
    sorted_words = Ex25.sort_words(words)
    sorted_words
    Ex25.print_first_word(words)
    Ex25.print_last_word(words)
    words
    Ex25.print_first_word(sorted_words)
    Ex25.print_last_word(sorted_words)
    sorted_words
    sorted_words = Ex25.sort_sentence(sentence)
    sorted_words
    Ex25.print_first_and_last(sentence)
    Ex25.print_first_and_last_sorted(sentence)
  
  
# looping

  fruits = ['apples', 'oranges', 'pears']

  # traditional way found in other languages
  for fruit in fruits
    puts fruit
  end

  # ruby style
  fruits.each do |fruit|
    puts fruit
  end

  # another way
  fruits.each {|fruit| puts fruit }

  # build lists

  elements = []

  (0..5).each do |i|
    puts "adding #{i}"
    elements.push(i)
  end

  # print them out
  elements.each {|i| puts "Element was: #{i}"}

# while

  i = 0 
  numbers = []

  while i < 5 
    numbers.push(i)
    i+= 1
  end

  for num in numbers
    puts num
  end
  
  numbers.each do |num|
    puts num
  end
  
  numbers.each {|num| puts num}
  
  
# Hashes: a way to store data just like a list, but can be accessed through more than just a number.

  profile = {
    'name' => 'Zed',
    'age' => 25,
    'height' => 167 
  }

  puts profile['name']
  puts profile['age']
  puts profile['height']

  profile['weight'] = 150
  profile['city'] = "Atlanta"

  puts profile['weight']
  puts profile['city']

  profile[2] = "yooo"
  puts profile[2]

  # should have all the items added above
  puts profile

  profile.delete('city')
  puts profile


  # Another example of hashes

  states = {
    'Oregon' => 'OR',
    'Florida' => 'FL',
    'California' => 'CA',
    'New York' => 'NY',
    'Michigan' => 'MI'
  }

  cities = {
    'CA' => 'San Francisco',
    'MI' => 'Detroit',
    'FL' => 'Jacksonville'
  }

  cities['NY'] = 'New York'
  cities['OR'] = 'Portland'

  puts "Michigan has: #{cities[states['Michigan']]} \n\n"

  states.each do |state, abbrev|
    puts "#{state} is abbreviated #{abbrev}"
  end

  puts ""

  cities.each do |abbrev, city|
    puts "#{abbrev} has the city #{city}"
  end

  # Now do both at the same time

  states.each do |state, abbrev|
    city = cities[abbrev]
    puts "#{state} is abbreviated #{abbrev} and has the city of #{city}"
  end
