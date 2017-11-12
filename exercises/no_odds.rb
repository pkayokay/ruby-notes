def no_odds( values )
  values.select { |n| n.even? }

  # or values.select { |n| n % 2 == 0}
end
