=begin
--------------- UNDERSTAND THE PROBLEM

Find the Duplicate

  Given an unordered array and the information that exactly one value in the Array occurs twice
  (every other value occurs exactly once),
  how would you determine which value occurs twice?
  Write a method that will find and return the duplicate value that is known to be in the Array

  Input: an Array
  Output: an Integer

  Rules:
    - there is one value that occurs twice in the Array
    - that value must be found and returned


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES



--------------- ALGORITHM

- initialize a clone of Array, `arr_clone` containing only unique elements from original Array
- initialize variable `index`, set to 0
- initialize variable `duplicate`, set to nil
  - iterate over each element of Array (select)
    - compare current element to the element of arr_clone at `index`
      - if the elements do not match,
        - duplicate = current element
        - break
      - else
        - add 1 to index
        - next iteration


--------------- CODE WITH INTENT
=end

def find_dup(arr)
  unique_arr = arr.uniq
  index = 0
  duplicate = nil

  for element in arr
    if element == unique_arr[index]
      index += 1
      next
    elsif element != unique_arr[index]
      duplicate = element
      break
    end
  end

  duplicate
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
          38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
          14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
          78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
          89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
          41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
          55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
          85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
          40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
          7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73