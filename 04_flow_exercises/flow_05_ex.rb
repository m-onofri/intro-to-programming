# Rewrite your program from exercise 3 using a case statement

def check_num num 
  case 
  when num >= 0 && num < 51
    puts "#{num} is between 0 and 50"
  when num < 101 && num > 50
    puts "#{num} is between 51 and 100"
  else
    puts "#{num} is over 100"
  end
end

check_num 33
check_num 88
check_num 111