# List of Digits:
#   Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

#-------------
#
# input: integer
# output: an array of integers
#
#-------------
#
# - initialize empty array, `result`
# - loop:
#   - break if integer == 0
#   - divide integer by 10
#   - prepend result to `result`
#

def digit_list(int)
  result = []

  until int == 0
    int, remainder = int.divmod(10)
    result.prepend(remainder)
  end

  result
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true