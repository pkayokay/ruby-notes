quotes = []
quotes << "They're peanut butter and jealous"
quotes << "It's not a man purse!"
quotes << "Rule number 76, no excuses!"

quotes.each do |quote|
   upcase_quote = quote.upcase
  puts upcase_quote
end

number = quotes.length
puts "There are #{number} quotes"

first = quotes[0]
third = quotes[2]

puts "The first item is: #{first}"
puts "The second item is: #{quotes[1]}"
puts "The third item is: #{third}"
