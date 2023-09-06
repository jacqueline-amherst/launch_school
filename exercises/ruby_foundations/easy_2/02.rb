=begin
--- PROBLEM

- input: two arrays
- output: a new array

- rules:
  - both input arrays have the same number of elements
  - the output array contains all elements from each input array
  - the elements in the output array alternate elements from each input array
  - the elements at corresponding indices are added to output array as subarrays

--- SCRATCH

 - Given [1, 2, 3] & [4, 5, 6]
  - output array = [[1, 4], [2, 5], [3, 6]]

  [1, 2, 3]
  [4, 5, 6]
  [0, 1, 2] -- the indices

  [[0, 0], [1, 1], [2, 2]] -- output array based on indices

--- ALGORITHM

Given two arrays, `array1`, `array2`

- initialize empty array `result`
- iterate over both arrays simultaneously:
  - add a new subarray to `result` containing the current element of both arrays
- return `result`

=end

def zip(array1, array2)
  result = []
  array1.each_with_index { |element, idx| result << [element, array2[idx]] }
  result
end

p zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]