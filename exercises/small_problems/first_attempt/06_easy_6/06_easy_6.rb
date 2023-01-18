=begin
--------------- UNDERSTAND THE PROBLEM

Combining Arrays:

  Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
  There should be no duplication of values in the returned Array,
  even if there are duplicates in the original Arrays.

  Input: two Arrays
  Output: a new Array containing the elements of both Arrays

  Rules:
    - each element should be unique ( no duplicates )


--------------- DATA STRUCTURES




--------------- ALGORITHM

- Given two Arrays as arguments
- initialize empty `new_arr` = []
- iterate over each 

--------------- CODE WITH INTENT
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]