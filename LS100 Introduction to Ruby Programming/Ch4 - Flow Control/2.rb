def caps(str)
  if str.length > 10
    str.upcase!
  else
    str
  end
end

puts caps("hippopotamus")
puts caps("dog")  
