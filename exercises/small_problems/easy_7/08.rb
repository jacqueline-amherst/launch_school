# Multiply Lists:
#   Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.
# you may assume that the arguments contain the same number of elements.
#
# -----------
# input: two arrays 
# output: one array
#
# rules: 
#   - both argument arrays contain the same number of elements
#   - output array also contains same number of elements
#   - output arrays elements are the products of the integers in the argument arrays at same index
#
# ------------
# - 

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map do |sub_arr|
    sub_arr.inject(:*)
  end
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]