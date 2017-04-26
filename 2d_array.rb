# array = [[0,1,2,3,4],[5,6,7,8,9]]

# array.each do |x|
#   x.each do |y|
#     puts y
#   end
#   puts "--"
# end

values = [
  ['A', 'B', 'C'],
  ['D','E','F'],
  ['G','H']]



puts "---------"

values.each_index do |i|

  subarray = values[i]
  subarray.each_index do |x|
    puts String(i) << " " << String(x) << "..." << values[i][x]
  end
end