# Rotation (Part 3):
# If you take a number like 735291 and rotate it to the left you get 352917.
# If you now keep the first digit fixed in place and rotate the remaining digits, you get 329175.
# Keep the first 2 digits fixed in place and rotate again to 321759.
# etc.
# The resulting number is called the maximum rotation of the original number
# Write a method that takes an integer as an argument, and returns the maximum rotation of that argument.
# You can use the `rotate_rightmost_digits` method from the previous exercise.
# Note that you do not have to handle multiple 0s.
# ---------- Problem
#
# ---------- Data Structures
# 735291 = start
# 352917
# 3 29175
# 32 1759
# 321 597
# 3215 79 = total rotation
# ---------- Algorithm
# `size` = size of `integer`
# starting at `size` and going down to 2:
#   send integer and current number as arguments to `rotate_rightmost_digits`
# The final result of this operation is the maximum rotation
# -----------
require 'pry'
require 'pry-byebug'

def rotate_array(arr)
  #binding.pry
  arr_clone = arr.clone
  first_element = arr_clone.shift
  arr_clone.push(first_element)
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  #binding.pry
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(integer)
  size = integer.to_s.size
  result = integer
  size.downto(2) do |num|
    result = rotate_rightmost_digits(result, num)
  end
  result
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845

# p rotate_rightmost_digits(735291, 1) == 735291
# p rotate_rightmost_digits(735291, 2) == 735219
# p rotate_rightmost_digits(735291, 3) == 735912
# p rotate_rightmost_digits(735291, 4) == 732915
# p rotate_rightmost_digits(735291, 5) == 752913
# p rotate_rightmost_digits(735291, 6) == 352917