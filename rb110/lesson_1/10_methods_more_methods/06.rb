# What is the return value of the following statement? Why?

p ['ant', 'bear', 'caterpillar'].pop.size

# The return value of this example will be 11.
# This is because `size` is being called on the return value of `pop`.
# `pop` removes and returns the last element of the collection it's called on.
# In this case that element is 'caterpillar'. `size`, when called on a string, returns the number of characters, which here is 11.
