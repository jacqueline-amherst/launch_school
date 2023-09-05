# Write a method that returns a list of all of the divisors of the positive integer passed in as an argument. 
# The return value can be in any sequence you wish.
=begin
--- Problem
  input: a single integer
  output: an array of integers

  rules:
    - output array countains all divisors of input integer

--- Algorithm

  Input = `integer`

  - initialize empty array, `result`
  - iterate over every integer `num` from 1 up to `integer`
    - divide `integer` by `num`
    - if divisible, add `num` to `result`
  - return `result`

=end

def divisors(integer)
  result = []
  1.upto(integer) { |num| result.push(num) if integer % num == 0 }
  result
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute

# I keep forgetting that I can use #select to return an array!!