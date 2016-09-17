# What will the following code print to the screen?

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

puts "The result of the exercise 4 is"
scream("Yippeee")

# => nothing
# => This is because the code after a return keyword is never executed

#1) Edit the method in exercise 4 so that it does print words on the screen. 
#2) What does it return now?

def scream(words)
  words = words + "!!!!"
  puts words
end

puts "The result of the exercise 5 is"
scream("Yippeee")