# How does `take` work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)
p arr

# `take` takes one argument, an integer, and returns a new array with the first (argument) number of elements in the original array.
# Above, I have checked the value of the original array after `take` has been called to see if it is destructive.
# `arr` has its original value, so I have determined it is not.
# All of this info is in the Ruby docs under Array#take
