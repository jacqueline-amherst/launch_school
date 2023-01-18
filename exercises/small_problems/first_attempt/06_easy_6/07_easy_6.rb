=begin
--------------- UNDERSTAND THE PROBLEM

Halvsies:

  Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
  that contain the first half and second half of the original Array, respectively.
  If the original array contains an odd number of elements, the middle element should be placed in the first half Array

  Input: One Array
  Output: Two Arrays

  Rules:
    - first return Array contains first half of elements from original Array
    - second return Array contains second half of elements from original Array
    - if there's a 'middle element', it is included in the first return Array


--------------- DATA STRUCTURES




--------------- ALGORITHM

- initialize variable `halway_index`, set to half the size of the Array, rounding up, minus one ( i.e. (5 / 2.0) rounded up,  - 1 )
- iterate over each element of Array
  - find the index of the current element, set new variable `index`
  - compare index to `halway_index`
  - if the index number of the element is <= `halfway_index`,
    - add it to the first Array


--------------- CODE WITH INTENT
=end

def halvsies(arr)
  halfway_index = (arr.size / 2.0).round - 1
  
  arr.partition do |num|
    index = arr.find_index(num)
    index <= halfway_index
  end
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]