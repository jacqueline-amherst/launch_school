[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]

=begin

Q: What's happening in this code?

A: On line 1 #each is being called on the nested array [[1, 2], [3, 4]].
On each iteration one of its elements (each a sub-array) is being passed to the block in place of the parameter `arr`.
On line 2 `puts` is being called on the first element of the given sub-array.
Therefore the first elements will be displayed (1 and 3 respectively).
#each always returns the original object, so the original array is returned.

end