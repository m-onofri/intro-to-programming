# What method could you use to find out if a Hash 
# contains a specific value in it? Write a program to 
# demonstrate this use.

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

value_to_find = 'web developer'

if person.has_value?(value_to_find)
  puts "The value is in the hash"
else
  puts "The value is not in the hash"
end

# => The value is not in the hash