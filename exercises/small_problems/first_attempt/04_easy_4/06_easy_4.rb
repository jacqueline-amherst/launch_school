# Running Totals:
#   Write a method that takes an Array of numbers and returns an array with the same number of elements,
# each element being a running total from the original array.

=begin
def running_total(numbers)
  totals = []
  previous_sum = 0

  for number in numbers
    current_sum = number + previous_sum
    totals << current_sum
    previous_sum = current_sum
  end

  totals
end
=end

=begin
def running_total(array)
  sum = 0
  array.each_with_object([]) do |number, array|
    sum += number
    array << sum
  end
end
=end

def running_total(array)
  array.inject([]) do |result, n|
    if result.empty?
      result << n
    else
      p result
      result << n + result.last
    end
  end
end


p running_total([2, 5, 13]) #== [2, 7, 20]

=begin
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
=end