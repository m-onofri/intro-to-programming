# Rewrite your previous method to return the new-style Roman numerals so when someone 
# calls roman_numeral 4, it should return 'IV'

def new_roman_numeral num
  number = ""
  if (num / 1000) > 0
    number = "M" * (num / 1000)
  end
  if (num % 1000) >= 900 
    number += "CM"
  end
  if (num % 1000) >= 500 && (num % 1000) < 900
    number += "D"
  end
  if (num % 1000) >= 400 && (num % 1000) < 500
    number += "CD"
  end
  if ((num % 1000) % 500) >= 100 && ((num % 1000) % 500) < 400
    number += "C" * (((num % 1000) % 500) / 100)
  end
  if (((num % 1000) % 500) % 100) >= 90
    number += "XC"
  end
  if (((num % 1000) % 500) % 100) >= 50 && (((num % 1000) % 500) % 100) < 90
    number += "L"
  end
  if (((num % 1000) % 500) % 100) >= 40 && (((num % 1000) % 500) % 100) < 50
    number += "XL"
  end
  if (((num % 1000) % 500) % 50) >= 10 && (((num % 1000) % 500) % 50) < 40
    number += "X" * ((((num % 1000) % 500) % 50) / 10)
  end
  if ((((num % 1000) % 500) % 50) % 10) == 9
    number += "IX"
  end
  if ((((num % 1000) % 500) % 50) % 10) >= 5 && ((((num % 1000) % 500) % 50) % 10) < 9
    number += "V" + "I" * (((((num % 1000) % 500) % 50) % 10) % 5)
  end
  if ((((num % 1000) % 500) % 50) % 10) == 4
    number += "IV"
  end
  if ((((num % 1000) % 500) % 50) % 10) < 4
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
    new_roman_numeral user_number.to_i
  end
end