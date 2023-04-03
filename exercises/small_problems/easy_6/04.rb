# Reversed Arrays (Part 1)
#   Write a method that takes an Array as an argument, and reveres its elements in place;
# that is, mutate the Array passed into this method. 
# The return value should be the same Array object.
# you may not use Array#reverse or Array#reverse!
#
# --------------
# input: an Array
# output: the same Array but with its elements reversed
#
# --------------
# - set first_index to 0
# - set last_index to -1
# - enter loop:
#   - swap the elements at first_index and last_index
#   - add one to first_index, subtract 1 from last_index
#   - break if first_index is equal to half the size of array
# --------------

def reverse!(list)
  first_index = 0
  last_index = -1

  until first_index >= list.size / 2
    list[first_index], list[last_index] = list[last_index], list[first_index]
    first_index += 1
    last_index -= 1
  end

  list
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true