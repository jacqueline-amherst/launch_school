# Rotation (Part 1)
#   Write a method that rotates an array by moving the first element to the end of the array.
# Do not use the method Array#rotate or Array#rotate! for your implementation.
# ------------
# input: array
# output: new array
# rules:
#   - original array should not be mutated
#   - new array contains the same elements as the original, but the element at index 0 is moved to the end of the array
#   - if there's only 1 element in the array, new array is identical to original
# -------------
# - remove the first element, `first`, of `arr`
# - add `first` to the end of the array
# 
# - Given `arr`
# - Set `arr_clone` to `arr`
# - set `first_element` to the element at index 0 of `arr_clone`
# - delete that element from `arr_clone`
# - append `first_element` to `arr_clone`
# - return `arr_clone`
# -----------

def rotate_array(arr)
  arr_clone = arr.clone
  first_element = arr_clone.shift
  arr_clone.push(first_element)
end

def rotate_string(string)
  rotate_array(string.chars).join
end

def rotate_integer(integer)
  rotate_string(integer.to_s).to_i
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

string = 'elephant'
p rotate_string(string)

integer = 123
p rotate_integer(integer)