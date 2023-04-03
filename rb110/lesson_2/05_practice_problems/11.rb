# Given the follwoing data structure use a combination of methods, including either #select or #reject,
# to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

multiples_of_3 = arr.map do |sub_arr|
  sub_arr.select { |int| int % 3 == 0 }
end

p multiples_of_3 == [[], [3, 12], [9], [15]]
