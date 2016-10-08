#Exercise b
# Here’s something for you to do in order to play around more with 
# center, ljust, and rjust: write a program that will display a table of contents;
# Start the program with an array holding all of the information for your table of 
# contents (chapter names, page numbers, and so on). Then print out the information from the array 
# in a beautifully formatted table of contents
title = "Table of contents"
content = [
            {:chapter => "Getting Started", :page => "1"},
            {:chapter => "Numbers", :page => "9"},
            {:chapter => "Letters", :page => "13"}
          ]
puts title.center(80)
for i in 0..(content.length - 1)
  puts "Chapter #{i + 1}: #{content[i][:chapter]}".ljust(40) + "page #{content[i][:page]}".rjust(40)
end