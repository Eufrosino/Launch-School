def has_lab?(str)
  if (/lab/) =~ str
    puts "Yup, there's a \"lab\" in this word"
  else
    puts "Nope, there's no \"lab\" in this word"
  end
end

has_lab?("laboratory")
has_lab?("experiment")
has_lab?("Pans Labyrinth")
has_lab?("elaborate")
has_lab?("polar bear")
