# Sum of Digits:
#   Write a method that takes one argument, a positive integer, and returns the sume of its digits.
# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each)
# ----------
# input: an integer
# output: a different integer
# rules:
#   - output is the sum of each *digit* of the given integer
# -----------
# - separate `int` into its component digits
#   - convert `int` to a string
#   - create an array of each character of `int`
#   - convert characters back to integers
#   - sum the digits
# - return new integer

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45