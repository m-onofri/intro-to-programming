# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

#    "laboratory"
#    "experiment"
#    "Pans Labyrinth"
#    "elaborate"
#    "polar bear"

strings = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]

def search_string array, regex
  array.each do |e|
    if e =~ regex
      puts e
    end
  end
end

search_string strings, /lab/