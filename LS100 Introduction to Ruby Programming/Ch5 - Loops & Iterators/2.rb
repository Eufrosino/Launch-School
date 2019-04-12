arr = ["one", "two", "three"]

arr.each_with_index do |x, index|
  puts "#{index + 1}. #{x}"
end
