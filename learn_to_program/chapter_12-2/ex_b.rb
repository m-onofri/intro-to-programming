# Happy birthday! Ask what year a person was born in, then the month, and then the day. 
# Figure out how old they are, and give them a big SPANK! for each birthday they have had

puts "In which year were you born?"
year = gets.chomp.to_i
puts "And in which month?"
month = gets.chomp.to_i
puts "And in which day?"
day = gets.chomp.to_i

user_birth_day = Time.new(year, month, day)

today = Time.new()

age_in_secs = today.to_i - user_birth_day.to_i

secs_in_a_year = 365 * 24 * 60 * 60

user_age = age_in_secs / secs_in_a_year

user_age.times do |i|
  puts "SPANK! (#{i+1})"
end