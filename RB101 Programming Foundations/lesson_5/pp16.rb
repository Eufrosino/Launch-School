chars = "abcdefghijklmnopqrstuvwxyz0123456789"

possible = chars.split('')

puts "#{possible.sample(8).join}-#{possible.sample(4).join}-#{possible.sample(4).join}-#{possible.sample(4).join}-#{possible.sample(12).join}"
