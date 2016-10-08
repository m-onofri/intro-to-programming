# Write a program that prints out the lyrics to that beloved classic, “99 Bottles of Beer on the Wall.”
bottles = 99

while bottles > 1
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
  bottles = bottles - 1
  if bottles == 0
    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts " "
  else
    puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."
    puts " "
  end
end

puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
