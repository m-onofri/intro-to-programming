# Improved ask method

def ask question 
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no') 
      if reply == 'yes'
        answer = true 
      else
        answer = false 
      end
      break 
    else
      puts 'Please answer "yes" or "no".' 
    end
  end
  answer # This is what we return (true or false). end
end

# Try to clean it up by removing the answer variable. You’ll have to use return to exit from the loop.

def ask_1 question 
  while true
    puts question
    reply = gets.chomp.downcase
    if (reply == 'yes' || reply == 'no') 
      if reply == 'yes'
        return true 
      else
        return false 
      end
    else
      puts 'Please answer "yes" or "no".' 
    end
  end
end

returned_value = ask_1 "Are you happy?"

puts "ask_1 returned #{returned_value}"