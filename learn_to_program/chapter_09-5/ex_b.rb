# Write a method that when passed an integer between 1 and 3000 (or so) returns a string 
# containing the proper old-school Roman numeral. 
# In other words, old_roman_numeral 4 should return 'IIII'. 
# Make sure to test your method on a bunch of different numbers.

# For reference, these are the values of the letters used:
# I =1 V=5 X=10 L=50 C=100 D=500 M=1000

def old_roman_numeral num
  number = ""
  if (num / 1000) > 0
    number = "M" * (num / 1000)
  end
  if (num % 1000) >= 500 
    number += "D"
  end
  if ((num % 1000) % 500) >= 100
    number += "C" * (((num % 1000) % 500) / 100)
  end
  if (((num % 1000) % 500) % 100) >= 50
    number += "L"
  end
  if (((num % 1000) % 500) % 50) >= 10
    number += "X" * ((((num % 1000) % 500) % 50) / 10)
  end
  if ((((num % 1000) % 500) % 50) % 10) >= 5
    number += "V" + "I" * (((((num % 1000) % 500) % 50) % 10) % 5)
  else 
    number += "I" * (((((num % 1000) % 500) % 50) % 10) % 5)
  end
  puts number
end

while true
  puts "Please enter an integer"
  user_number = gets.chomp
  if user_number == "exit"
    break
  else
    old_roman_numeral user_number.to_i
  end
end

