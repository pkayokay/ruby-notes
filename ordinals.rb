# http://www.thefirehoseproject.com/prework/28
=begin
[Challenge Problem] - Calculating the Ordinal

In this lesson, we are challenging you to write a program to determine the ordinal of a number and display it on the screen.

The ordinal of a number is the number that defines a thing's position in a series, such as "first," "second," or "third." Our program will convert numbers like 1, 2, 3 into ordinals like 1st, 2nd, 3rd, etc.

Your program will accept user input and display information back to the user. This problem is actually a problem you may encounter when building real web applications.

So for example, given an input of 51, a message like "That's the 51st item!" should be displayed on the screen.

Here are some hints to get you started:

First, prompt the user with the message, "Enter a number"
Second, receive the user input and store it in a variable. Since you're dealing with numbers, you may want to convert it to an integer at this step.
Third, lop off the right-most digit and store it in a variable.
HINT! A trick you can use to lop off the right-most digit is to calculate the number's % 10.
For example: 51 % 10 = 1
And another example: 75 % 10 = 5
Fourth, depending on the right-most digit (equal to the input number modulo 10) that comes back, determine the suffix and display a message to the user.
If the right-most digit equals 1, the suffix should be st
Otherwise, if the digit equals 2, the suffix should be nd
Otherwise, if the digit equals 3, the suffix should be rd
Otherwise, the suffix should be th
=end

puts "Please enter a number"
value = gets.chomp.to_i
suffix_number = value % 10
special = value  % 100

if suffix_number >=4
    suffix_letter = "th"
  elsif suffix_number == 3
    suffix_letter = "rd"
  elsif suffix_number == 2
    suffix_letter = "nd"
  elsif  suffix_number == 1 
    suffix_letter = "st"
end

output = value.to_s + suffix_letter

if special >=11 && special <=13
    special = value
    puts "#{special}th"
  else
    puts output
end