[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]

=begin
  
On line 1 #map is being called on the same nested array as the last example.
Each sub-array is subsequently passed in to the block as the variable `arr`.
On line 2 #first is called on the current sub-array, which returns the element at index 0.
Puts is called on that element, displaying it.
Since puts is the last expression of the block, the block's return value is `nil`.
#map transforms each element based on the return value of the block, so the return value of #map is an array of nils.
  
end