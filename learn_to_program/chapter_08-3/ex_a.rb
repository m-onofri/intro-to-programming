# Write the program we talked about at the beginning of this chapter, one that asks us to type as many
# words as we want (one word per line, continuing until we just press Enter on an empty line) and then 
# repeats the words back to us in alphabetical order.

array_word = []
puts "Write a word"
user_word = gets.chomp
while user_word != ""
  array_word.push(user_word)
  puts "Write another word"
  user_word = gets.chomp
end
puts array_word.sort