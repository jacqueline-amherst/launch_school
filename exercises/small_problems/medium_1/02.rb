# Rotation (Part 2):
#   Write a method that can rotate the last n digits of a number.
# --------
# input: two integers, `integer`, `number_of_digits`
# output: an integer
# rules:
#   - the output integer contains the same digits as the original, but with the specified number of digits rotated
# ---------
# - Separate the unrotated and rotated digits into different variables
# - `unrotated` are index 0 to index -number_of_digits
# - `rotated` are index -number_of_digits, to -1
# - send `rotated` through `rotate_array`
# - concatenate the two arrays
require 'pry'

def rotate_array(arr)
  arr_clone = arr.clone
  first_element = arr_clone.shift
  arr_clone.push(first_element)
end

def rotate_rightmost_digits(integer, number_of_digits)
  unrotated = integer.to_s[0..(-number_of_digits - 1)]
  rotated = integer.to_s[-number_of_digits..-1].chars
  unrotated.concat(rotate_array(rotated).join).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917