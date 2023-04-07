# Odd Lists:
#   Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the odd elements of the argument array.
# ----------
# input: array
# output: new array
# rules:
#   - output array contains only the elements that are at odd indices of the original array
# ----------
#  - use selection to create new array containing only the elements at odd indices
# ---------

# First Solution:
# def oddities(arr)
#  arr.select { |num| arr.index(num).even? }
# end

# Second Solution:
# def oddities(arr)
#   result = []
#   arr.each_with_index { |num, idx| result.push(num) if idx.even? }
#   result
# end

# Third solution:
def oddities(arr)
  arr.each_with_object([]) { |num, new_arr| new_arr.push(num) if arr.index(num).even? }
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]