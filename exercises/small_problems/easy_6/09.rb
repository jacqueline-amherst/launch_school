# Does My List Include This?
#   Write a method named `include?` that takes an array and a search value as arguments.
# This method should return true if the search value is in the array, false if it is not.
#  You may not use the Array#include? method in your solution

def include?(array, search_value)
  !!(array.count(search_value) != 0)
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false