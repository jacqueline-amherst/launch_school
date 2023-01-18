=begin
--------------- UNDERSTAND THE PROBLEM

Sum of Sums

  Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array
  You may assume the the Array always contains at least one number.

  Input: an array
  Output: an integer

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

array = [1, 2, 3]
subsequences = [1], [1 + 2], [1 + 2 + 3]


--------------- ALGORITHM

Given one argument, arr.

- initialize variable, `sum`, set to `0`
- initialize variable, `index`, set to `0`
- for each 'num' in `arr`:
  - initialize variable, `current_sum`, set to the sum of all elements of `arr` in the range (0..index)
  - add `current_sum` to `sum`
  - add 1 to `index`
- return `sum`


--------------- CODE WITH INTENT
=end

def sum_of_sums(arr)
  sum = 0
  index = 0

  arr.each do |num|
    sum += arr[0..index].reduce(:+)
    index += 1
  end
  
  sum
end

sum_of_sums([1, 1, 1])

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35