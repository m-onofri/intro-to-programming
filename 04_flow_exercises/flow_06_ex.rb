# We get that error because the method equal_to_four miss an end keyword

def equal_to_four x
  if x == 4
    puts "yup"
  else 
    puts "nope"
  end               # => I had this end keyword
end

equal_to_four 44