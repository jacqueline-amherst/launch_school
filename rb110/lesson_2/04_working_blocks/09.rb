[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

=begin
  
On line 1 #map is called on a 3-level nested array.
Each element (sub-array) is consecutively passed into the block defined on lines 1-7 in place of the parameter `element1`.
on line 2 #each is called on each element (another sub-array) within the current `element1`,
each of which is consecutively passed in to the block defined on lines 2-6 in place of the parameter `element2`.
On line 3 #partition is called on the current value of `element2` and each element of `element2` is passed in to the block defined on lines 3-5 in place of the parameter `element3`.
On line 4 #size is called on current value of `element3`, returning its size (number of bytes for integers, number of characters for strings)
Still on line 4, #> is called on the value from #size with the argument 0, performing a comparison.
The result of the comparison on line 4 will be a boolean, and that boolean will be the return value of the inner block because it is the result of the final expression.
#partition will receive this return value and use it to return a nested array for each `element2`:
first element contains the elements for which the block returned `true`, the second for `false`.
Every element in this example will return `true` when passed to the block, so each iteration will return:
=> [[element3], []]
This will consequently be the return value for the block on lines 2-6.
#each on line 2 however does not use this return value and instead returns the original collection.
Therefore, the block on lines 1-7 will return the original objects as well.
Therefore, #map will return a new array identical to the original collection.
  
=end