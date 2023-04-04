# Muliplicative Average
#   Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.
# Assume the array is non-empty.
#
# ----------
# - input: array of integers
# - output: float rounded to 3 decimals
#
# - rules:
#   - no matter what the result is it must end in 3 decimals
#
# ---------
# - set divisor to the number of elements in `array`
# - set dividend to the sum of all elements
# - set quotient to the result of dividing dividend by divisor, 
#

def show_multiplicative_average(arr)
  divisor = arr.size.to_f
  dividend = arr.reduce(:*)
  quotient = dividend / divisor
  puts "The result is: #{sprintf('%.3f', quotient)}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667