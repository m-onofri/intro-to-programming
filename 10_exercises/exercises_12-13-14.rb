# Given the following data structures. 
# Write a program that moves the information from the array into the empty hash that applies to the correct person.

contact_data =  [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Array with the keys of the new hashes
keys = ["email", "address", "phone number"]

contacts.each do |key, value|
  data = contact_data.shift       #Extract the first element of the array
  data.each_index do |k|          
    value[keys[k]] = data[k]      #Insert key-value pairs in the empty hash
  end
end

p contacts

# Using the hash you created from the previous exercise, 
# demonstrate how you would access Joe's email and Sally's phone number?

puts contacts["Joe Smith"]["email"]
puts contacts["Sally Johnson"]["phone number"]