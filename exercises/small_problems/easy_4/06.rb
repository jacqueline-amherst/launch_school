# Running Totals:
#   Write a method that takes an Array of numbers and returns an array with the same number of elements,
#   and each element has the running total from the original array.

=begin
def running_total(array)
  result = []
  sum = 0

  array.each do |num|
    result << num + sum
    sum += num
  end

  result
end
=end

def running_total(array)
  sum = 0
  array.each_with_object([]) do |num, arr|
    arr << sum += num
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []