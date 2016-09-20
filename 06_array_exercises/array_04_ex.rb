# What does each method return in the following example?

arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)  # => 3 

arr.index[5]  # => NoMethodError: undefined method `[]' for #<Enumerator: [15, 7, 18, 5, 12, 8, 5, 1]:index>
              #    from (irb):2
              #    from /Users/manuele/.rbenv/versions/2.3.1/bin/irb:11:in `<main>'

arr[5]        # => 8