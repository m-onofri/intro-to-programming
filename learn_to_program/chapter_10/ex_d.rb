# Dictionary sort
# make a new method to sort words (something like dictionary_sort). 
# Remember, though, that if I give your program words starting with capital letters, 
# it should return words with those same capital letters, just ordered as you’d find in a dictionary.

words = ["car", "Codino", "albatross", "hotel", "Hercules", "Bambi", "ball"]

def sort_dictionary array
  sorted_array = []
  while array.length > 0
    lower = {word_name: array[0], word_index: 0}
    array.each_index do |i|
      if array[i].downcase < lower[:word_name].downcase
        lower[:word_name] = array[i]
        lower[:word_index] = i
      end
    end
      sorted_array.push(lower[:word_name])
      array.delete_at(lower[:word_index])
  end
  sorted_array
end

ordered_array = sort_dictionary words
ordered_array.each { |word| puts word }

