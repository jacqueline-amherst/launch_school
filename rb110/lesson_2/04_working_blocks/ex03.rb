[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end

=begin
  
On line 1 #map is called on the nested array [[1, 2], [3, 4]]
Each element (sub-array) of array is consecutively passed to the block on lines 1-4.
On line 2 #first is called on the current sub-array, returning the element at index 0 of sub-array.
#puts is called on that element, sending it to the display.
on line 3 first is once again called on current sub-array. Since this is the last expression of the block, this element is what is returned.
This return value is then used by #map to transform the current element.
Therefore, #map returns a new array, [1, 3] -- each sub-array is now only its first element.
Furthermore, the following will be output due to #puts on line 2:

1
3
=> [1, 3] (return value of #map)
  
end