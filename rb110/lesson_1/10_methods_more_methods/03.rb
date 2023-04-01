# What's the return value of `reject` in the following code? Why?

[1, 2, 3].reject do |num|
  puts num
end

# The return value of `reject` here is a new array identical to the original array.
#   This is because `reject` adds each element for which the return value of the block is a falsey value to a new collection.
#   In this case, `puts num` is the last expression evaluated and `puts` always returns `nil`, which is a falsey value.
#   Therefore all elements will evaluate as `nil` when iterated over,  and added to the new collection.
