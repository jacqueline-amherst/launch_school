# Given this data structure write some code to return an array which contains only the hashes where all the integers are even.
#
# input: array of hashes
# output: new array of hashes
#
# ------------
# rules: 
#   - each hash in original array contains symbols as keys and arrays of integers as values
#   - the new array contains only the hashes from the original in which the value arrays contain only even integers
#   
# -----------
# - set `result` to []
# - for each `hash` in `arr`:
#   - for each k/v pair in hash:
#     - if each element of `value` is even:
#       - `hash` is added to `result`
require 'pry'

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

even_hashes = arr.each_with_object([]) do |hash, result|
  hash.each_value do |arr|
    if arr.all? { |num| num.even? }
      result << arr
    end
  end
end

=begin
even_hashes = arr.select do |hash|
  hash.map do |_, arr|
    arr.all? { |num| num.even? }
  end
end
=end

p even_hashes

# I tried and struggled with using a combination of #select and #all? but eventually got frustrated and changed my strategy.
# The given solution uses two calls to #all?.
# I was trying to use #map in the middle level, and I couldn't figure out why I kept getting an array identical to the origianl as a return value.
# Now I realize that the reason that solution didn't work is because #map is returning an array containing a boolean, not a boolean object.
