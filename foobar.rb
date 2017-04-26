=begin
[Challenge Problem] - Foobar Problem

This question is a REAL question that is actually asked in interviews. Being able to answer the Foobar problem will be important if you're looking to land a job, because it requires that you have a foundation with programming and the language you're using.

This problem has its origins in a children's game for learning about division, remainders and fractions. Teachers have schoolchildren sit in a circle, and the person who starts the game says the number "1." Each student in the circle has a turn to say the next number in a pattern. The catch is: for all numbers that are divisible by three, the player should say "foo." For any number divisible by five, the player should say "bar." Numbers divisible by both become "Foobar."

For example, a typical round of Foobar would start as follows:

 1, 2, Foo, 4, Bar, Foo, 7, 8, Foo, Bar, 11, Foo, 13, 14, Foobar, 16, 17, Foo, 19, Bar, Foo, 22, 23, Foo, Bar, 26, Foo, 28, 29, Foobar, 31, 32, Foo, 34, Bar, Foo, ...
In this problem, you should write a program to play the Foobar game and display n elements of the Foobar pattern!

Hints

First, prompt the user for how many digits of the pattern do they want to see.
Second, since they entered a number, we'll need to convert it to an integer.
Third, add the Foobar logic that will generate that many digits of the pattern.

Here's an example execution of the program. When we run our program, as a user we will see:

How many items do you want to see?
Then, as a user I type the number 7 and press enter:

How many items do you want to see? 7
As a user I will be presented the first 7 items in the Foobar pattern:

  1
  2
  Foo
  4
  Bar
  Foo
  7
But if we started the program expecting only 4 elements like this:

How many items do you want to see? 4
We would be presented with this output after our program runs:

  1
  2
  Foo
  4

Good luck on this difficult coding challenge!

=end 


puts "How many items do you want to see?"
items = gets.to_i
counter = 0

while counter < items
  counter = counter + 1
    if counter % 5 == 0 && counter % 3 == 0 
      puts "foobar"
      elsif counter % 3 == 0
      puts "foo"
      elsif counter % 5 == 0
      puts "bar"
      else 
      puts counter 
    end
end
