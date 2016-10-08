# Write a shuffle method that takes an array and returns a totally shuffled version

my_cats = ["Cannella", "Codino", "Hercules", "Isidoro", "Licia", "Oliver", "Pato", "Patty", "Violetta", "White-yell"]

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

new_list = shuffle my_cats
new_list.each { |cat| puts cat }
    