=begin
--------------- UNDERSTAND THE PROBLEM

Combine Two Lists

  Write a method that combines two Arrays passed in as arguments,
  and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

  You may assume that both input Arrays are non-empty, and that they have the same number of elements.

  Input: two arrays
  Output: one array

  Rules: 
    - the elements in the resultant array alternate between elements of array 1 and array 2, in that order



--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- initialize empty array, `combined_arr`
- initialize a copy of each array, arr1_clone & arr2_clone
- initialize variable `index`, set to 0
- enter a loop:
  - break if arr1_clone & arr2_clone are both empty
  - if `index` is even
    - push the first element of arr1_clone to combined_arr
    - delete that element
  - if `index` is odd
    - same as above using arr2_clone
  - add 1 to index
- return combined_arr


--------------- CODE WITH INTENT
=end

=begin
My first solution:

def interleave(arr1, arr2)
  combined_arr = []
  arr1_clone = arr1.clone
  arr2_clone = arr2.clone
  index = 0

  loop do
    break if arr1_clone.empty? && arr2_clone.empty?
    if index.even?
      combined_arr << arr1_clone.shift
    elsif index.odd?
      combined_arr << arr2_clone.shift
    end
    index += 1
  end

  combined_arr
end
=end

# further exploration:

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']