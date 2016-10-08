# How about wedding_number? 
# It should work almost the same as english_number, except it should insert the word and all 
# over the place, returning things like 'nineteen hundred and seventy and two', 
# or however wedding invitations are supposed to look.

def wedding_number number
  if number < 0 # No negative numbers.
    return 'Please enter a number that isn\'t negative.' 
  end
  if number == 0 
    return 'zero'
  end

  num_string = '' # This is the string we will return.
  
  ones_place = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
  
  tens_place = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]

  teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

  left = number
  write = left / 1000000 # How many millions left?
  left = left - write * 1000000 # Subtract off those millions.
  
  if write > 0
    # Now here's the recursion:
    millions = wedding_number write
    num_string = num_string + millions + ' million'
    if left > 0
      # So we don't write 'two hundredfifty-one'... 
      num_string = num_string + ' and '
    end 
  end

  write = left / 1000 # How many thousands left?
  left = left - write * 1000 # Subtract off those thousands.
  
  if write > 0
    # Now here's the recursion:
    thousands = wedding_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      # So we don't write 'two hundredfifty-one'... 
      num_string = num_string + ' and '
    end 
  end

  write = left / 100 # How many hundreds left?
  left = left - write * 100 # Subtract off those hundreds.
  
  if write > 0
    # Now here's the recursion:
    hundreds = wedding_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'... 
      num_string = num_string + ' and '
    end 
  end

  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens.
  if write > 0 
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write. 
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'... 
      num_string = num_string + ' and '
    end 
  end

  write = left # How many ones left to write out? 
  left = 0 # Subtract off those ones.

  if write > 0
  num_string = num_string + ones_place[write-1] 
  # The "-1" is because ones_place[3] is
  # 'four', not 'three'.
  end

  # Now we just return "num_string"...
  num_string
end

puts "Please insert an integer number"
number = gets.chomp.to_i
puts wedding_number number





