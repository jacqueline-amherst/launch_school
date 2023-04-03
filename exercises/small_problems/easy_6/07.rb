# Halvsies
#   Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the original Array, respectively.
# If the original array contains an odd number of elements, the middle element should be placed in the first half Array.
#
# --------------
# input: array
# output: nested array
#
# rules: 
#   - output array contains two subarrays:
#     - first sub-array contains first half of elements (plus 'middle' element if odd number of elements)
#     - second sub-array contains second half of elements
#   - if there's an odd number of elements, the middle element is grouped with first half
#   - if there's only one element it goes in the first sub-array and there is a second, empty sub-array
#   - if there are no elements, returns array with two empty sub-arrays
#
#----------------
# Given `array`
# - set `result` to [[], []]
# - set `split_index` to half of the size of `array`, rounding up
# - iterate over each element:
#   - if its index in `array` is less than or equal to `split_index`
#     - add it to first sub-array of `result`
#   - otherwise add it to second sub-array
# - return `result`

def halvsies(arr)
  result = [[], []]
  split_index = (arr.size / 2.0).ceil

  arr.each_with_index do |element, idx|
    half = idx < split_index ? 0 : 1
    result[half] << element
  end

  result
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Further Exploration:
#   It's necessary to divide by 2.0 instead of 2 on line 30 because it gives us a float.
# With a float it is possible to round up to the nearest integer.
