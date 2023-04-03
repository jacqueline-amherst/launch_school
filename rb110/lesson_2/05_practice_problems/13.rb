# Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically
# by only taking into consideration the odd numbers they contain.

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

result = arr.sort_by |arr|
  arr.select do |num|
    num.odd?
  end
end

# This one was difficult for me. I ended up just looking at the solution...
# I'll play around with #sort_by to get a better handle on how to use it.
