# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of `any?` in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# The return value of the block will be a boolean (true or false). It is determined by by calling the method `odd?` on the given element.
# The return value of `any?` is also a boolean, in this case `true`. It is determined by whether or not there are any elements in the collection it is called on for which the block returns `true`.
