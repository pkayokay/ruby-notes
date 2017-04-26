def digitize(n)
  n.to_s.split.map(&:to_i) 
  # or n.to_s.split.map { |i| i.to_i}
end

