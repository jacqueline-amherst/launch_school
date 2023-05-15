# Which of the following are objects in Ruby? 
# If they are objects, how can you find out what class they belong to?

true
"hello"
[1, 2, 3, "happy days"]
142

# `true` is an object of the `TrueType` class
# "hello" is an object of the String class
# [1, 2, 3, "happy days"] is an object of the Array class
# 142 is an object of the Integer class
#
# If you were uncertain about any of these examples, you could easily determine if they are objects by calling the `.class` method on them.
# If they are objects, `.class` would return their Class type