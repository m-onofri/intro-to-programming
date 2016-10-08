# instead of using your old shuffle, write a new music_shuffle method. 
# It should take an array of filenames (like those listed previously) and mix them up good and proper.
# NB: this is an example of song in my playlist: 
# /Users/manuele/Music/dischi_completi/Fall_Out_Boy-From_Under_The_Cork_Tree/13-fall_out_boy-xo-kzt.mp3
def shuffle_improved array
  shuffled_array = []
  list_length = array.length
    loop do
      j = rand(0...array.length)
      if shuffled_array == [] # This is for the first song I move from array to shuffled_array
        shuffled_array.push(array[j])
        array.delete_at(j)    # So array[j] = nil
      end
      if array[j] != nil
        last_song_album = shuffled_array.last.split("/")[5]
        current_song_album = array[j].split("/")[5]
        if last_song_album != current_song_album
          shuffled_array.push(array[j])
          array.delete_at(j)
        end
      end
      if shuffled_array.length == list_length # This is the condition to exit the loop (if the condition is true)
        break
      end
    end
  shuffled_array
end

# This is the directory where I want to save the playlist
Dir.chdir '/Users/manuele/Documents/launch_school/learn_to_program/chapter_11-8'

# First we find all of the songs we want to insert in the playlist.
songs = Dir['/Users/manuele/Music/dischi_completi/**/*.{mp3}']
shuffled_songs = shuffle_improved songs

# Here the user can choose the name of the playlist
puts 'What would you like to call this playlist?' 
playlist_name = gets.chomp + ".m3u"

File.new(playlist_name, "w+")

shuffled_songs.each do |song|
  File.open(playlist_name, "a+") { |file| file.puts song }
end
puts  
puts 'Done, cutie!'