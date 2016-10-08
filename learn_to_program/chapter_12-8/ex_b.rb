# Write a program to read in names and birth dates from a text file. 
# It should then ask you for a name. 
# You type one in, and it tells you when that person’s next birthday will be 
# (and, for the truly adventurous, how old they will be).

list = Dir["/Users/manuele/Documents/launch_school/learn_to_program/chapter_12-8/*.txt"]
birth_dates = {}


File.open(list[0], "r") do |file| 
  file.each_line do |l|
    line_array = l.split(":")
    birth_dates[line_array[0]] = line_array[1].chomp.strip
  end
end

puts "Please enter a name:"
user_input = gets.chomp

check = true

birth_dates.each do |k, v|
  if k == user_input
    check = false

    birthday = v.split(/ /)
    year = birthday[2].to_i
    day = birthday[1].to_i
    month = case birthday[0]
              when "Jan" 
                1
              when "Feb"
                2
              when "Mar"
                3
              when "Apr"
                4
              when "May"
                5
              when "Jun"
                6
              when "Jul"
                7
              when "Aug"
                8
              when "Sep"
                9
              when "Oct"
                10
              when "Nov"
                11
              when "Dic"
                12
            end
    
    user_birth_day = Time.new(year, month, day)
    today = Time.new()
    age_in_secs = today.to_i - user_birth_day.to_i
    secs_in_a_year = 365 * 24 * 60 * 60
    user_age = age_in_secs / secs_in_a_year

    puts "#{k} was born in #{v} and he's #{user_age}"
  end
end

if check == true
  puts "Sorry, the name you enter is not in the list!"
end