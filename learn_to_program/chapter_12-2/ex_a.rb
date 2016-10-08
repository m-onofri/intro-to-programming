# One billion seconds! 
# Find out the exact second you were born (if you can). 
# Figure out when you will turn (or perhaps when you did turn) one billion seconds old. 
# Then go mark your calendar.

user = Time.local(1976, 8, 15, 13, 31) 

new_date = user.to_i + 1000000000 

puts Time.at (new_date)