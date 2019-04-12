array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array2 = array.select do |num|
  num % 2 != 0
end

puts array2
