=begin
--------------- UNDERSTAND THE PROBLEM

Does My List Include This?

  Write a method named `include?` that takes an Array and a search value as arguments.
  This method should return `true` if the search value is the Array, `false` if it is not.
  You may not use the Array#include? method in your solution.

  Input: an Array and a value
  Output: boolean

  Rules:
    - determine whether the value is included in the Array
    - 


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- Given two arguments, `Array` and `value`
- determine if `value` is included as an element in `Array`
  - initialize empty array `match`
  - iterate over each element of `Array`
    - if element is identical to `value`
      - push element into `match` array
    - end
  - if `match` includes any elements, return true
    - otherwise, return false


--------------- CODE WITH INTENT
=end

def include?(array, value)
  match = []

  array.each { |element| match << element if element == value }

  match.size.positive?
end

p include?([1, 2, 3, 4, 5], 3) == true
p include?([1, 2, 3, 4, 5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false
