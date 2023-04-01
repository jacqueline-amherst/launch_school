# What happens when we modify an array while we are iterating over it? 
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# This will output: 
# 1
# 3
# => [2, 4]
# This happens because `each` is iterating based off the index number, and since elements are being removed during iteration, the index numbers keep changing.

# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# This will output:
# 1
# 2
# => [1, 2]
# On each iteration the last element is deleted. So after iterating twice there are no more elements left.
