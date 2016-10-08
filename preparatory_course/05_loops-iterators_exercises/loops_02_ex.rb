# Write a while loop that takes input from the user, performs an action, 
# and only stops when the user types "STOP". Each loop can get info from the user.

puts "Enter an input"

loop do
  user_input = gets.chomp
  if user_input == "STOP"
    break
  end
end
