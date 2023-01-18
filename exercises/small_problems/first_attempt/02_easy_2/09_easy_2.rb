# String Assignment
#   Take a look at the following code:

name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name

# What does this code print out? Think about it for a moment before continuing.
# Answer:
#   "Alice"
#   "Bob"

# Now let's look at something a bit different.

name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# What does this print out? Can you explain these results?
# Answer:
#   "BOB"
#   "BOB"
# Both name and save_name point to the same object in memory.
# String#upcase! is a mutating method.
# Since the string literal which both name and save_name point to has been mutated, both local variables reflect that change.
