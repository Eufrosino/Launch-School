# Assignment: Mortgage / Car Loan Calculator

#m = p * (j / (1 - (1 + j)**(-n)))
=begin

formula for mortgage

m = monthly payment
p = loan amount
j = monthly interest rate
n = loan duration in months

=end

def prompt(message)
  puts "=> #{message}"
end

def valid_input?(inp)
  inp.empty? == false
end

def valid_number?(inpu)
  inpu != 0 && inpu > 0
end

def mortgage(p, j, n)
  return (p.to_i * ((j.to_f * 0.01) / (1 - (1 + (j.to_f * 0.01))**(-n.to_i))))
end

prompt("Welcome to my mortgage calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp
  break if valid_input?(name)
  prompt("Uh oh, looks like you didn't type anything! \nPlease enter your name:")
end

puts
prompt("Hello, #{name}! Let's figure out your monthly payment!")
puts

sleep(1.5)
loop do
  prompt("What is your loan amount?")

  loan = ''
  loop do
    loan = gets.chomp.to_i
    break if valid_number?(loan)
    prompt(
      "Uh oh, looks like that is not a valid number!
      \n=> Please enter the desired loan amount for the calculation:"
    )
  end

  prompt("Alright #{name}, we have a desired loan amount of $#{loan}")
  puts
  sleep(1.5)
  prompt("Now, enter your monthly interest rate:")

  interest = ''
  loop do
    interest = gets.chomp.to_f
    break if valid_number?(interest)
    prompt(
      "Uh oh, looks like that is not a valid number!
      \n=> Please enter the desired interest rate for the calculation:"
    )
  end

  prompt("Okay #{name}, your interest rate is #{interest}%")
  puts
  sleep(1.5)
  prompt("Lastly, what is the duration of this loan in months?")

  months = ''
  loop do
    months = gets.chomp.to_i
    break if valid_number?(months)
    prompt(
      "Oops, looks like that is not a valid number of months!
      \n=> Please enter the duration of the loan in months:"
    )
  end

  prompt("Just a sec, let me process your data...")
  sleep(2)

  puts

  monthly = mortgage(loan, interest, months)

  prompt("All done!")

  sleep(1)

  puts
  prompt("Your monthly payments will be $#{monthly}. Not bad!")
  puts

  sleep(2)

  prompt("Would you like to calculate another mortgage, #{name}? (y for yes)")


  ans = gets.chomp.downcase
  case ans
  when 'y'
  else
    break
  end
end

puts

prompt("Thank you for using my mortgage calculator, #{name}!")
sleep(3)
