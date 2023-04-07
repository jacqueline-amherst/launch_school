# Double Doubles
#   A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits..
# For example, 44, 3333, 103103, 7676 are all double numbers.
# Write a method that returns 2 times the number provided as an argument, unless the argument is a double number.
# Double numbers should be returned as is.
#
#-----------
# input: integer
# output: integer
# rules:
#   - if the integer is a double number, return it as-is
#   - otherwise, return it doubled.
#
#------------
# - determine if number is a double number
# - if it is:
#   - return number
# - otherwise
#   - return product of number times 2
#
# Helper method: double_number?
# - if number has an even number of digits
#   - set half_digits to quotient of dividing number by 2
#   - see if first half of digits are the same as last half of digits
#     - convert number to string
#     - string[0, half_digits] * 2 equal to number as string?
#   - if so, return true
# - if number is odd return false
#------------

def twice(number)
  double_number?(number) ? number : number * 2
end

def double_number?(number)
  num_string = number.to_s
  if num_string.size.even?
    half_size = num_string.size / 2
    num_string[0, half_size] * 2 == num_string
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
