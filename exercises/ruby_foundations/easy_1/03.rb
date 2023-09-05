=begin
  
--- PROBLEM

input: a sorted array of integers
output: a new sorted array of integers

rules:
  - output array includes all integers missing from the original array between first and last element
  - output array is sorted numerically
  - given integers can be positive or negative
  - if there are no missing integers, output is empty array
  - if input array is a single integer, output is empty array

--- EXAMPLES

--- DATA STRUCTURES

- find all integers between first and last element of input, inclusive
  - store in an array
- compare input and new array
- return another new array that contains only the integers that are not included in original array

--- ALGORITHM

GIVEN `array`
- initialize empty array, `result`
- create a `range` starting at first element of `array` through last element of `array`
- iterate over `range`:
  - if element is NOT included in `range`, add to `result`
- return `result`

=end

def missing(array)
  result = []
  (array.first..array.last).each do |integer|
    result.push(integer) unless array.include?(integer)
  end

  result
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []