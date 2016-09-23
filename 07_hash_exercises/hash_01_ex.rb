# Given a hash of family members, with keys as the title 
# and an array of names as the values, use Ruby's 
# built-in select method to gather only immediate family 
# members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family_members = family.select { |key, value| key == :sisters || key == :brothers }

p immediate_family_members  # => {:sisters=>["jane", "jill", "beth"], :brothers=>["frank", "rob", "david"]}

p immediate_family_members.values # => [["jane", "jill", "beth"], ["frank", "rob", "david"]]

p immediate_family_members.values.flatten # => ["jane", "jill", "beth", "frank", "rob", "david"]