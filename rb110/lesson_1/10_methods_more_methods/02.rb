# How does `count` treat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# `count` considers the return value of the block in that it counts each element for which the block returns a truthy value.
# In this case, the return value of `count` is `1` because only one element ('caterpillar') results in a truthy value when passed to the block.
# This information can be found in the Ruby docs for Array#count
