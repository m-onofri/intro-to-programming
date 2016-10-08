#Exercise a
# Write a program that asks for a person’s first name, then middle, and then last. 
# Finally, it should greet the person using their full name.
puts "What's your name?"
first_name = gets.chomp
puts "Do you have a middle name? (yes/no)"
answer = gets.chomp
if answer == "yes"
  puts "So, what's your middle name?"
  middle_name = gets.chomp
end
puts "What's your last name?"
last_name = gets.chomp
if answer == "yes"
  puts "Hello " + first_name + " " + middle_name + " " + last_name
else
  puts "Hello " + first_name + " " + last_name
end