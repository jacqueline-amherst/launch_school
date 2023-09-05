def one?(collection)
  counter = 0
  collection.each do |element|
    counter += 1 if yield(element)
    return false if counter == 2
  end

  counter == 1 ? true : false
end

p one?([1, 3, 5, 6]) { |value| value.even? }    == true
p one?([1, 3, 5, 7]) { |value| value.odd? }     == false
p one?([2, 4, 6, 8]) { |value| value.even? }    == false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
p one?([1, 3, 5, 7]) { |value| true }           == false
p one?([1, 3, 5, 7]) { |value| false }          == false
p one?([]) { |value| true }                     == false

=begin
--- SCRATCH

- `one?` takes one argument, a collection (in this case an array)
  (returns `true` if exactly one element is true)
  - iterates over each element:
    - passes to block to return a boolean
    - stops processing elements when a second iteration comes back true

--- ALGORITHM

- Given `collection`
- initialize `counter` set to 0
- iterate over each `element` of `collection`:
  - yield `element` to block
    - add one to `counter` if block returns `true`
    - return `false` if counter is 2
- return true if `counter` is 1
- return false
=end