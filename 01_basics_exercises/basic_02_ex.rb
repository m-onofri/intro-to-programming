#Exercise 2
#Use the modulo operator, division, or a combination of both to take a 4 digit number
puts "Exercise 2"
four_digit_number = 9876

# and find the digit in the:
# 1) thousands place
  thousands_place = four_digit_number / 1000

# 2) hundreds place
  hundreds_place = (four_digit_number % 1000) / 100

# 3) tens place
  tens_place = (four_digit_number % 100) / 10

# 4) ones place
  ones_place = (four_digit_number % 10)

puts thousands_place
puts hundreds_place
puts tens_place
puts ones_place