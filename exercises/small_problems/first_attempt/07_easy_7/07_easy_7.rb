=begin
--------------- UNDERSTAND THE PROBLEM

Multiplicative Average:

  Write a method that takes an Array of integers as input,
  multiplies all the numbers together,
  divides the result by the number of entries in the Array,
  and then prints the result rounded to 3 decimal places.
  Assume the array is non-empty.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

sprintf('%.3f', etc)


--------------- ALGORITHM

- one parameter, `array`
- initialize variable `divisor`, set to size of `array`
- initialize variable `dividend`, set to product of all elements
- initialize variable `quotient`, set to `dividend` divided by `divisor`


--------------- CODE WITH INTENT
=end

def show_multiplicative_average(arr)
  divisor = arr.size
  dividend = arr.reduce(:*)
  quotient = dividend / divisor.to_f
  formatted_quotient = sprintf('%.3f', quotient)
  "The result is #{formatted_quotient}"
end

p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667