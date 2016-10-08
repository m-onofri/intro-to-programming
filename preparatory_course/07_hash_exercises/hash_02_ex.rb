# Look at Ruby's merge method. 
# Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the 
# differences.

hash_1 = {a: 100, b: 200, c: 300}

hash_2 = {a: 10, b: 20, c: 30}

hash_3 = hash_1.merge(hash_2) {|key, val1, val2| val1 - val2}

p hash_1 # => {:a=>100, :b=>200, :c=>300}

p hash_2 # => {:a=>10, :b=>20, :c=>30}

p hash_3 # => {:a=>90, :b=>180, :c=>270}

hash_4 = hash_1.merge!(hash_2) {|key, val1, val2| val1 + val2}

p hash_4 # => {:a=>110, :b=>220, :c=>330}

p hash_1 # => {:a=>110, :b=>220, :c=>330}