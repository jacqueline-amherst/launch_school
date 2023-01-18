=begin
--------------- UNDERSTAND THE PROBLEM

Write a method that takes an Array as an argument, and reverses its elements in place;
that is, mutate the Array passed into this method.
The return value should be the same Array object.

  Input: an Array
  Output: the same Array, mutated

  Rules:
    - the elements reverse their index order
    - the array remains the same


--------------- EXAMPLES // TEST CASES

list = [1, 2, 3, 4]
result = list.reorder!
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id


--------------- DATA STRUCTURES

- mutating the elements of an Array does not mutate the Array itself
- using index number pairs [0, -1], [1, -2], etc we could use parallel assignment to swap them
  - if we do this, there needs to be a solution for a middle element.
    - i.e. in [1, 2, 3] the element `2` should not be altered.


--------------- ALGORITHM

- initialize variable `iterations`, set to half the size of Array, round down to nearest whole number (i.e. 5 / 2 = 2)
- initialize variable `start_index`, set to 0
- initialize variable 'end_index', set to -1

- enter a loop, which will iteratate `iterations` number of times:
  - using parrallel assignment, swap `start_index` and `end_index`
  - add 1 to start_index
  - subtract 1 from end_index

- return Array


--------------- CODE WITH INTENT
=end

def reorder!(array)
  iterations = array.size / 2
  start_index = 0
  end_index = -1

  iterations.times do
    array[start_index], array[end_index] = array[end_index], array[start_index]
    start_index += 1
    end_index -= 1
  end

  array
end

p list = [1, 2, 3, 4, 5, 6, 7, 8]
p result = reorder!(list)
p list == result
