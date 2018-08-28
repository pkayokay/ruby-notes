def delete_nth(order, max_e)
  occurrences = Hash.new(0)
  order.reject { |item| (occurrences[item] += 1) > max_e }
end

puts delete_nth([1,1,1,1], 2) # return [1,1]