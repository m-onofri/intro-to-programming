# Given the following expression, 
# how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}

person_name = person[:name]

puts person_name # => Bob