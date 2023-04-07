# Counting Up:
#   Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.
#
# --------------
# input: integer
# output: array of integers
#
# rules:
#   - output array contains every number from 1 to integer
#   - 0 is not a valid input because can't count from 1 to 0
# ------------
# - Given an integer `int`
# - set `result` to []
# - for `num` in 1 to `int`
#   - add to `result`
# - return `result`
# ------------

def sequence(int)
  (1..int.abs).each_with_object([]) { |num, arr| arr << num }
end

# p sequence(5) == [1, 2, 3, 4, 5]
p sequence(-3) == [1, 2, 3]
#sequence(1) #== [1]

# This doesn't handle the further exploration perfectly, but I've altered my code to use the absolute value of the integer.
# It will not return a negative array, but rather will change a negative integer into its positive alternative.
