# http://learnrubythehardway.org/book/ex16.html

filename = ARGV.first

puts "We're going to erase #{filename}"
puts "If you dont want that hit control-c"
puts "If you do want that hit return"

$stdin.gets

puts "Opening the file..."
target = open(filename, 'w')  #open this file in writing mode, w for writing, without a parameter it's opened on reading mode by default

puts "Truncating file. Goodbye!"
target.truncate(0) # empties file..

puts "Now I'm going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

puts "I'm goin to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close
