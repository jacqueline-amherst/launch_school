=begin
--------------- UNDERSTAND THE PROBLEM

Multiply All Pairs

  Write a method that takes two Array arguments in which each Array contains a list of numbers,
  and returns a new Array that contains the product of every pair of numbers 
  that can be formed between the elements of the two Arrays.
  The results should be sorted by increasing value.
  You may assume that neither argument is an empty Array.

  Input: 2 arrays
  Output: 1 new array

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

|arr1=| |arr2=     |
[2, 4], [4, 3, 1, 2]

multiplier = arr1[0] # => 2

2 * 4
2 * 3       # all products added to array as we go 
2 * 1
2 * 2

add 1 to multiplier (index number), repeat for each 

--------------- ALGORITHM

- initialize empty array, `products`
- for each element of arr1:
  - multiply by each element of arr2 in turn
  - add each product to `products`


--------------- CODE WITH INTENT
=end

def multiply_all_pairs(arr1, arr2)
  products = []

  for multiplier in arr1
    arr2.each do |num|
      products << multiplier * num
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
