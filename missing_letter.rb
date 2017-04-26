# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.


def find_missing_letter(arr)
  ((arr.first..arr.last).to_a - arr).first

  # or...
  # letters = (arr.first..arr.last).to_a
  # return (letters - arr).first
end

puts find_missing_letter(["a","b","d"])
puts find_missing_letter(["a","b","c","e"])


