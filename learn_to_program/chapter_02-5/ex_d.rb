#Exercise d
# If I am 1,025 million seconds old (which I am, though I was in the 800 millions when I started 
# this book), how old am I?
hours_year = 24 * 365
minutes_year = hours_year * 60
seconds_year = minutes_year * 60
author_age_seconds = 1025000000 / seconds_year

puts "The author is #{author_age_seconds} years old"
