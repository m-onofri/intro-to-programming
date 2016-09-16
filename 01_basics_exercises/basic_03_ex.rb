#Exercise 3
#Write a program that uses a hash to store a list of movie titles with the year they came out. 
#Then use the puts command to make your program print out the year of each movie to the screen.

puts "Exercise 3"
star_wars_hash = {
              "The Phantom Menace" => 1999,
              "Attack of the Clones" => 2002,
              "Revenge of the Sith" => 2005,
              "A New Hope" => 1977,
              "The Empire Strikes Back" => 1980,
              "Return of the Jedi" => 1983,
              "The Force Awakens" => 2015
            }

puts star_wars_hash["The Phantom Menace"]
puts star_wars_hash["Attack of the Clones"]
puts star_wars_hash["Revenge of the Sith"]
puts star_wars_hash["A New Hope"]
puts star_wars_hash["The Empire Strikes Back"]
puts star_wars_hash["Return of the Jedi"]
puts star_wars_hash["The Force Awakens"]
