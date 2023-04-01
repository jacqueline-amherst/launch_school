# What is the return value of the `select` method below? Why?

[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# The return value of the `select` method here will be the a new array that is identical to the original array,
#   [1, 2, 3] because selection is performed based on the truthiness of the return value of the block for each element.
#   The return value of the block in this instance is 'hi', which has a truthy value.
#   Therefore, the each element will result in a truthy value when passed to the block and will be added to the new collection.
