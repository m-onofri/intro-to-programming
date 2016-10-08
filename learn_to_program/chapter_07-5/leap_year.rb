# Write a program that asks for a starting year and an ending year and then puts all the leap years 
# between them (and including them, if they are also leap years). 
# Leap years are years divisible by 4 (like 1984 and 2004). 
# However, years divisible by 100 are not leap years (such as 1800 and 1900) unless 
# they are also divisible by 400 (such as 1600 and 2000, which were in fact leap years).
puts "Write a starting year"
starting_year = gets.chomp.to_i
puts "Write an ending year"
ending_year = gets.chomp.to_i

leap_years = []

while starting_year <= ending_year
  if (starting_year % 4 == 0 && starting_year % 100 != 0) 
    leap_years.push(starting_year)
    if (starting_year % 100 == 0 && starting_year % 400 == 0)
      leap_years.push(starting_year)
    end
  end
  starting_year += 1
end

puts leap_years