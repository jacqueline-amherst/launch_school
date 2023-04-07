# Grocery List:
#   Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.
# --------
# input: nested array
# output: flat array
# rules:
#   - each element of the input array is a sub-array containng:
#     - a fruit (string)
#     - number of that fruit (integer)
#   - the output array only contains strings:
#     - each fruit from original array is listed `integer` number of times 
# ----------
# - Given `array` containing `sub-array`s, each containing a `fruit` and an `integer`
# - add each `fruit` to `result` `integer` number of times
# 
# - set `result` to []
# - for `sub-array` in `array`:
#   - set `fruit` to the first element
#   - set `integer` to last element
#   - convert `integer` to integer
#   - add `fruit` to `result` `integer` times
# - return `result`
# --------------

def buy_fruit(array)
  result = []
  array.each do |sub_array|
    fruit = sub_array.first
    integer = sub_array.last.to_i
    integer.times { result << fruit }
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]