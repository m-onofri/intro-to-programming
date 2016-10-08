#Exercise b
# Write a program that asks for a per- son’s favorite number. 
# Have your program add 1 to the number, and then suggest the result as a bigger and better 
# favorite number.
puts "What's your favorite number?"
fav_num = gets.chomp
new_num = fav_num.to_i + 1
puts "Actually I think #{new_num.to_s} is a better number"
