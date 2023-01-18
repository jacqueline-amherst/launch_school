=begin
--------------- UNDERSTAND THE PROBLEM

Reversed Arrays (Part 2):

  Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order.
  Do not modify the original list.

  Input:
  Output:

  Rules:


--------------- DATA STRUCTURES

This is easier than the previous exercise


--------------- ALGORITHM

- initialize a clone of Array
- enter loop to perform transformation (map)
  - assign the current element to the last element of cloned Array
  - delete that element of clone
- return new array


--------------- CODE WITH INTENT
=end

def reverse(array)
  dummy = array.clone
  array.map { |element| element = dummy.pop }
end


p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true