# Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

# Write a program that prints out groups of words that 
# are anagrams. Anagrams are words that have the same 
# exact letters in them but in a different order.

anagrams = {}

words.each do |word|
  key = word.split(//).sort.join
  if anagrams.has_key?(key)
    anagrams[key].push(word)
  else
    anagrams[key] = [word]
  end
end

anagrams.values.each do |value|
  p value
end


  

