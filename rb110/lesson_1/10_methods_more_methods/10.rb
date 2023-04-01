# What is the return value of the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil]
# On the first iteration, `num` is 1, so the return value of the block is the `else` statement -- 1.
# For the next two iterations, `num` is > 1, so the first `if` condition is run (`puts num`).
# Since `puts` returns `nil`, and `map` transforms based on the return value of the block, both 2 and 3 are transformed to `nil`.
