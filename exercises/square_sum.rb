def squareSum(numbers)
 numbers.map {|n| n * n }.inject(:+)
end

squareSum(1)