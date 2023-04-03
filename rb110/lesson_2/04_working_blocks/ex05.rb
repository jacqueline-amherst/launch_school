[[1, 2], [3, 4]].map do |arr|
  arr.map do |num|
    num * 2
  end
end

=begin
  
On line 1 #map is called on the nested array [[1, 2], [3, 4]].
Each element (sub-array) of array is consecutively passed into the block defined on lines 1-5 in place of the parameter `arr`.
on line 2 #map is called again, this time on `arr`.
Each element of the sub-array is consectibely passed into the block defined on lines 2-4 in place of the parameter `num`.
On line 3 the method #* is called on `num` and given the argument `2`.
Since `num * 2` is the last expression in the inner block, the return value of #map on line 2 is the current value of `num` doubled.
i.e [2, 4], and [6, 8]
Since #map is the final expression in evaluated in the outer block, the return value of the block is the same as the return value of inner #map
#map on line 1 will transform its elements based on the return value of its block and return a new collection.
Therefore the return value of #map on line 1 is:
[[2,4], [6,8]]
  
end