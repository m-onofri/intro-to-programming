# Write a method to sort an array of words without using the array method "sort"
# Try it twice: once using recursion and once without

# First sort method without recursion

my_cats = ["Hercules", "White-yell", "Violetta", "Patty", "Isidoro", "Oliver", "Licia", "Cannella", "Pato", "Codino"]

def sort_array array
  sorted_array = [] 
  while array.length > 0
    lower = {cat_name: array[0], cat_index: 0}
    array.each_index do |i|
      if array[i] < lower[:cat_name]
        lower[:cat_name] = array[i]
        lower[:cat_index] = i
      end
    end
    sorted_array.push(lower[:cat_name])
    array.delete_at(lower[:cat_index])
  end
  sorted_array
end

ordered_array = sort_array my_cats
ordered_array.each { |cat| puts cat }

puts "-" * 30

# Second sort method with recursion

my_cats = ["Hercules", "White-yell", "Violetta", "Patty", "Isidoro", "Oliver", "Licia", "Cannella", "Pato", "Codino"]

def sort array
  sort_array_1 array, []
end

def sort_array_1 array, sorted_array
  if array.length > 0
    lower = {cat_name: array[0], cat_index: 0}
    array.each_index do |i|
      if array[i] < lower[:cat_name]
        lower[:cat_name] = array[i]
        lower[:cat_index] = i
      end
    end
    sorted_array.push(lower[:cat_name])
    array.delete_at(lower[:cat_index])
    sort_array_1 array, sorted_array 
  else
    sorted_array
  end
end

ordered_array_1 = sort my_cats
ordered_array_1.each { |cat| puts cat }
p ordered_array_1
