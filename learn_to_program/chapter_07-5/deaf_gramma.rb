# Whatever you say to Grandma (whatever you type in), she should respond with this:
# HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear you (or at least she thinks so) 
# and yells back:
# NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different year each time, maybe any year 
# at random between 1930 and 1950.
# Deaf grandma extended. What if Grandma doesn’t want you to leave? When you shout BYE, she could pretend not to hear you. 
# Change your previous program so that you have to shout BYE three times in a row.
counter = 0
puts "HELLO SONNY, WHAT DO YOU WANT?"
while counter < 3
  request = gets.chomp
  if request == "BYE"
    counter += 1
  else
    counter = 0
  end
  if request == request.upcase
    random_year = 1930 + rand(21)
    puts "NO, NOT SINCE #{random_year}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end 
end
puts "BYE SONNY"