=begin
Write a method that does the same thing as Range#step, but does not operate on a range. 
Instead, your method should take 3 arguments: the starting value, the ending value, and the step value to be applied to each iteration. 
Your method should also take a block to which it will yield (or call) successive iteration values.

--- PROBLEM

- input: three integers
- output: depends on block

  - rules:
    - first argument is the beginning of the range
    - second argument is the end of range
    - third argument is step value
    - step value determines which elements are sent to block
    
--- DATA STRUCTURES

  step(1, 10, 3)

  - creates a range (1..10) and step value, 3
  - iterates based on step value:
    - 1, 4, 7, 10
  - each nth value is iterated where step value is n

  - if range is an array:
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    [0, 1, 2, 3, 4, 5, 6, 7, 8, 9] -- indices
    [O, X, X, O, X, X, O, X, X, 0] -- O is yielded, X is ignored

    - only the elements at indices evenly divisible by step value are yielded (and index 0)

--- SCRATCH

- How to yield every nth element?

--- ALGORITHM

- given `begin`, `end`, `step_value`
- initialize `range_array` as (`begin`..`end`)
  - convert to array
- initialize empty array `selected_elements`
- iterate over each 'element' of `range_array`:
  - if the index of `element` is 0 or evenly divisible by `step_value`
    - add element to `selected_elements`
    - yield to block
- return `selected_elements`

=end

def step(begin_value, end_value, step_value)
  range_array = (begin_value..end_value).to_a

  range_array.each_with_index do |element, idx|
    yield(element) if idx == 0 || idx % step_value == 0
  end

  nil
end

# puts step(1, 4, 2)

p step(1, 10, 3) { |value| puts "value = #{value}" }

=begin
  NOTES:

  It was difficult to make a decision on what this method should return. I decided to return nil because it didn't really make sense to return anything in particulat.
  I had considered returning an array of the selected elements, which could then be chained, but there's really nothing suggesting that return value...
  It also added seemingly superfluous code to do so.

  Leaving the last line (nil) out would return an array of the range. That could work, but there's really no reason for it.
=end