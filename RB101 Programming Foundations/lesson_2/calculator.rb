# ask the user for two nums
# ask the user for an operation to perform
# perform the operation on the two nums
# output the result

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end


prompt("Welcome to the Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to input your name!")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do
  num1 = []
  loop do
    prompt("What's the first number?")
    num1 = Kernel.gets().chomp().to_s

    if valid_number?(num1)
      break
    else
      prompt ("Hmm.. that doesn't look like a valid number.")
    end
  end

  num2 = []
  loop do
    prompt("What's the second number?")
    num2 = Kernel.gets().chomp().to_s

    if valid_number?(num2)
      break
    else
      prompt ("hmm.. that doesn't look like a valid number.")
    end
  end

  operator_prompt = <<-MSG
What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Make sure to choose an operation from 1, 2, 3 and 4!")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")
  sleep(2)

  result = case operator
  when '1'
    num1.to_i() + num2.to_i()
  when '2'
    num1.to_i() - num2.to_i()
  when '3'
    num1.to_i() * num2.to_i()
  when '4'
    num1.to_f() / num2.to_f()
  end

  prompt("The result is #{result}!")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  ans = Kernel.gets().chomp()
  break unless ans.downcase().start_with?('y')
end

prompt("Thank you for using my calculator program!")
