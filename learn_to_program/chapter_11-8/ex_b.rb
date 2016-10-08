# Build your own playlist.
# Building a playlist is easy. It’s just a regular text file (no YAML required, even)
# What makes it a playlist? Well, you have to give the file the .m3u extension, like playlist.m3u or something.
#  Use your shuffle method to mix up your playlist.

# My custom shuffle method
def shuffle array
  shuffled_array = []
  array.each_index do |i|
    loop do
      j = rand(0...array.length)
      if (j != i) && (shuffled_array[j] == nil)
        shuffled_array[j] = array[i] 
        break
      end
    end
  end
   shuffled_array
end

# This is the directory where I want to save the playlist
Dir.chdir '/Users/manuele/Documents/launch_school/learn_to_program/chapter_11-8'

# First we find all of the songs we want to insert in the playlist.
songs = Dir['/Users/manuele/Music/**/*.{mp3}']
shuffled_songs = shuffle songs

# Here the user can choose the name of the playlist
puts 'What would you like to call this playlist?' 
playlist_name = gets.chomp + ".m3u"

File.new(playlist_name, "w+")

shuffled_songs.each do |song|
  File.open(playlist_name, "a+") { |file| file.puts song }
end
puts  
puts 'Done, cutie!'