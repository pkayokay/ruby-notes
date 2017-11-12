def solution(a, b)
  a.length < b. length ? a + b + a : b + a + b 
  # or  a<b ? a+b+a : b+a+b
end

puts solution("1","3")