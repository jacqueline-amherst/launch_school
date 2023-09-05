# Same as previous, but optimized
=begin

--- Problem

  input: a single integer
  output: an array of integers

  rules:
    - output array countains all divisors of input integer

--- Scratch

If we iterate over half of the array we can find all the divisors by including the divisor and the result
For example:

divisors(4) == [1, 2, 4]

4 / 1 = 4
[4, 1]
4 / 2 = 2
[4, 1, 2, 2]

Then we can call #uniq to remove redundant divisors, and #sort if desired

--- Algorithm

- initialize empty array `result`
- iterate over each integer from 1 up to half of (`integer` +1)
  - if `integer` % `num` == 0
    - add `num` and (`integer` / `num`) to `result`
- return `result`
=end

require 'pry'
require 'pry-byebug'

def divisors(integer)
  result = []

  1.upto(Math.sqrt(integer)) do |num|
    # binding.pry
    if integer % num == 0
      result.push(num)
      result.push(integer / num)
    end
  end

  result.uniq.sort
end

# p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891]