# What is the return value of `map` in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# The return value of `map` is: 
#   {a: 'ant', b: nil}
# `map` performs transformation based on the return value of the block for each element.
# Since the last expression in the block is an if statement that only evaluates elements that match the criteria,
# and if statements return `nil` for elements that do not match any of the criteria,
# `nil` is returned for the value 'bear'.

# Two notes: 
#   1. I had the comparison backward, so I had `ant` and `bear` swapped
#   2. I expected both the key and value to be returned. Very strange.
#       - after playing with this in irb for a bit I've gotten a better understanding.
