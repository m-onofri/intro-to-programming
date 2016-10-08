# Extend the built-in classes 

class String
  def roman_to_integer 
    roman_letters = {
                      "i" => 1,
                      "v" => 5,
                      "x" => 10,
                      "l" => 50,
                      "c" => 100,
                      "d" => 500,
                      "m" => 1000
                    }

    index = self.length - 1

    total = 0
    current_value = 0
    previous_value = 0

    while index >= 0

      current_letter = self[index].downcase
      current_value = roman_letters[current_letter]
      index -= 1

      if !current_value
        puts "This is not a valid roman numerable!!!"
        break
      end

      if current_value < previous_value
        total -= current_value
      else
        total += current_value
      end

      previous_value = current_value

    end

    total

  end
end


loop do
  puts "Insert a valid roman numeral"
  user_string = gets.chomp
  if user_string == "exit"
    break
  else
    puts user_string.roman_to_integer 
  end
end
