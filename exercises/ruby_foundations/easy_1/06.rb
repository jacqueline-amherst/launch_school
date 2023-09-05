def any?(array, &block)
  array.each { |element| return true if block.call(element) }
  false
end

puts any?([1, 3, 5, 6]) { |value| value.even? } == true
puts any?([1, 3, 5, 7]) { |value| value.even? } == false
puts any?([2, 4, 6, 8]) { |value| value.odd? } == false
puts any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
puts any?([1, 3, 5, 7]) { |value| true } == true
puts any?([1, 3, 5, 7]) { |value| false } == false
puts any?([]) { |value| true } == false

=begin

NOTES:

My solution takes a block as an argument, meaning it doesn't work if a block is not passed in.
All of the examples pass in a block, but it's worth noting that it wouldn't work without one.

=end