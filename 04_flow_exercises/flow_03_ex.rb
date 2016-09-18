# Write a program that takes a number from the user between 0 and 100 
# and reports back whether the number is between 0 and 50, 51 and 100, or above 100.

def check_num num
  if num >= 0 && num < 51
    puts "#{num} is between 0 and 50"
  elsif num < 101 && num > 50
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is over 100"
  end
end

check_num 16
check_num 78
check_num 193