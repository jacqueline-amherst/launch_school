# Sequence Count:
#   Create a method that takes two integers as arguments.
# The first argument is a count, and the second is the first number of a sequence that your method will create.
# The method should return an Array that contains the same number of elements as the count argumement,
# while the values of each element will be multiples of the starting number.
#   You may assume that the count argument will always have a value of 0 or greater,
# While the starting number can be any integer value.
# If the count is 0 an empty list should be returned.
#
# --------------
# - input: two integers
# - output: an array of integers
# - rules:
#   - input integers represent:
#     - 1. `count`: how many elements should be in the output array
#     - 2. `int`: the first number in the sequence
#   - the sequence contains multiples of `int`
# ---------------
# - set `result` to []
# - for each `num` between 1 and `count`:
#   - add the product of `num` and `int` to `result`
# - return `result`
# --------------

# def sequence(count, integer)
#   (1..count).each_with_object([]) { |num, result| result << num * integer }
# end

def sequence(count, integer)
  (1..count).map { |num| num * integer }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []