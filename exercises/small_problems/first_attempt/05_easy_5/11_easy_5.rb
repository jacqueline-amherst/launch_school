require 'pry'

# Spin Me Around In Circles:
# Gien a method named spin_me that takes a string as an argument and returns a string that contains the the same words,
# but with each word's characters reversed.
# Given the method's implementation, will the returned string be the same object as the one passed in as an argument or a different object?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
    binding.pry
  end.join(" ")
end

p spin_me("hello world") # "olleh dlrow"

# Answer: 
#   spin_me will return a new object due to calling Array#join, which returns a new string.
# However, since the the destructive String#reverse! is used, the original string should be identical to the new one.
# If we wanted to return the same string, we could change the line `end.join(' )` to `end`, then invoke str as the last line before the final end.

# Just kidding! Tested this in pry and I was wrong about str being mutated.
# It looks like since each word is iterated over individually, it is the `word` variable that is mutated,
# which doesn't affect the original str variable.
