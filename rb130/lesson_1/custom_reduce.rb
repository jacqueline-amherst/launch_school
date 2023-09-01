def reduce(array, starting_accumulator = 0)
  counter = 0
  result = starting_accumulator

  while counter < array.size do
    current_element = array[counter]
    result = yield(result, current_element)
    counter += 1
  end

  result
end

array = [1, 2, 3, 4, 5]

p reduce(array) { |acc, num| acc + num }                    # => 15
p reduce(array, 10) { |acc, num| acc + num }                # => 25
p reduce(array) { |acc, num| acc + num if num.odd? }        # => NoMethodError: undefined method `+' for nil:NilClass