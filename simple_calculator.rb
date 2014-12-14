# Simple Calculator 

# Method for readability 
def say(message)
  puts "=> #{message}"
end

# Main Program
while true
  say "Please enter the first number."
  num1 = gets.chomp 

  say "Now enter the second number."
  num2 = gets.chomp

  say "Choose an Operation: 1) Addition 2) Subtraction 3) Multiplication 4) Division"
 
  operator = gets.chomp

  if   
    operator == '1'
    result = num1.to_f + num2.to_f
  elsif operator == '2'
    result = num1.to_f - num2.to_f
  elsif operator == '3'
    result = num1.to_f * num2.to_f
  elsif operator == '4'
    if num1 == '0' || num2 == '0'
      puts "You cannot divide by zero."
      result = "invalid"
    else
      result = num1.to_f / num2.to_f
    end
  else
    say("You did not input a valid operator")
    result = "invalid"
  end

  say("The result is #{result}")
  say("Would you like to do another calculation? y/n")
  run_again_option = gets.chomp.downcase

  if run_again_option == 'y'
    next
  else
    break
  end
end


