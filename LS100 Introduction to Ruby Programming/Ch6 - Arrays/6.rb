arr1 = [1, 2, 3]
arr2 = []

arr1.each do |x|
  arr2 << x + 2
end

p arr1
p arr2
