# Using some of Ruby's built-in Hash methods, 
# write a program that loops through a hash and prints 
# all of the keys. Then write a program that does the 
# same thing except printing the values. 
# Finally, write a program that prints both.

user_hash = {first_name: "Manuele", last_name: "Onofri", age: "33"}

user_hash.keys.each {|key| puts key}
# => first_name
# => last_name
# => age

user_hash.values.each {|value| puts value}
# => Manuele
# => Onofri
# => 33

user_hash.each do |key, value|
  puts "The user's #{key} is #{value}"
end
# => The user's first_name is Manuele
# => The user's last_name is Onofri
# => The user's age is 33
