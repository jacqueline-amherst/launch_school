=begin
--- PROBLEM

--- SCRATCH

For each element, add a new element to an array that is the return value of a block

--- ALGORITHM

- initialize an empty array `result`
- iterate over each `element` of `collection`:
  - add result of yielding to block with `element` as argument to `result`
- return `result`

=end

def map(collection)
  collection.each_with_object([]) do |element, result|
    result << yield(element)
  end
end

p map([1, 3, 6]) { |value| value**2 } == [1, 9, 36]
p map([]) { |value| true } == []
p map(['a', 'b', 'c', 'd']) { |value| false } == [false, false, false, false]
p map(['a', 'b', 'c', 'd']) { |value| value.upcase } == ['A', 'B', 'C', 'D']
p map([1, 3, 4]) { |value| (1..value).to_a } == [[1], [1, 2, 3], [1, 2, 3, 4]]
p map({a: 'a', b: 'b', c: 'c'}) { |key, value| puts "#{key} is #{value}"}