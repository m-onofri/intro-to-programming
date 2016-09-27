# Suppose you have a hash h = {a:1, b:2, c:3, d:4}

h = {a:1, b:2, c:3, d:4}

# 1. Get the value of key `:b`.
b_value = h[:b]
puts b_value

# 2. Add to this hash the key:value pair `{e:5}`
h[:e] = 5
p h

# 3. Remove all key:value pairs whose value is less than 3.5
j = h.select do |k, v|
  v >= 3.5
end

p j
