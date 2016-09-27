# Use the each method of Array to iterate over 
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out 
# values greater than 5

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

array.each do |e|
  if e > 5
    puts e
  end
end