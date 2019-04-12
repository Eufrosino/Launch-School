puts "Enter a number between 0 and 100."
num = gets.chomp.to_i

def evaluate_num(num)
  case
  when num < 0
    puts "Error:  #{num} is below 0"
  when num <= 50
    puts "#{num} is between 0 and 50"
  when num <= 100
    puts "#{num} is between 51 and 100"
  else
    puts "Error: #{num} is above 100"
  end
end
