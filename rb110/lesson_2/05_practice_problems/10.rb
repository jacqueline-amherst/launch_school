# Given the following data structure and without modifying the original array,
# use the `map` method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.
require 'pry'

result = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each do |hash|
  hash.each do |key, value|
     hash[key] = value += 1
  end
end

p result
