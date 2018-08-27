def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

def descending_order(n)
  n.digits.sort.reverse.join.to_i
end

def descending_order(n)
  n.to_s.split("").sort.reverse.join('').to_s
end

puts descending_order(12345)