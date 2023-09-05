# Solution to previous problem without using any methods that take a block

def missing(array)
  all_numbers = (array.first..array.last).to_a
  all_numbers.difference(array)
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []