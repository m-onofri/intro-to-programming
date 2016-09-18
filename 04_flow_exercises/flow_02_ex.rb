# Write a method that takes a string as argument. 
# The method should return the all-caps version of the string, only if the string is longer than 10 characters.

def all_caps string
  if string.length > 10
    return string.upcase
  end
  return "Sorry, your string is less than 10 characters"
end

puts all_caps "hello world"

puts all_caps "hello"