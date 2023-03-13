# 1. A method that returns the sum of two integers:
# 
#     Given two integers.
#     Return the sum of integers.
#
# 2. A method that takes an array of strings and returns a string that is all those strings concatenated together.
#
#     Given an array of strings.
#     Initialize empty string, `result`
#     Iterate over each element in array:
#       - push element to `result`
#     Return `result`
#
# 3. A method that takes an array of integers and returns a new array with every other element from the original array, starting with the frist element.
#
#     Given an array of integers.
#     Initialize empty array, `result`
#     Initialize `counter` set to 0
#     Iterate over each element of array:
#       - break if `counter` is equal to the number of elements in array
#       - if `counter` is even add element to `result`
#       - add 1 to `counter`
#     Return `result`
#
# 4. A method that determines the index of the 3rd occurrence of a given character in a string.
#   For instance, if the given character is 'x' and the string is 'axbxcdxex' the method should return 6 (the index of the third 'x')
#   If the given character does not occur at least 3 times, return `nil`
#
#     Given a character and a string.
#     Initialize `index` set to 0
#     Initialize `occurence` set to 0
#     Iterate over each char of string:
#       - If char is character, add 1 to `occurence`
#       - If `occurence` is 3, return index
#       - Add 1 to `index`
#     If `occurence` is less than 3 return `nil`
#
# 5. A method that takes two arrays of numbers and returns the result of merging the arrays.
#   The elements of the first array should become the elements at the even indexes of the returned array,
# while the elements of the second array should become the elements at the odd indices.
#
#     Given two arrays of integers.
#     Initialize empty array, `result`
#     Initialize `index` set to 0
#     Until `index` is equal to the sum of both arrays - 1:
#       - if `index` is even, 
#         - element = first element of array 1
#         - delete first element from array 1
#         - add element to `result`
#       - if `index` is odd,
#         - element = first element of array 2
#         - delete first element from array 2
#         - add element to `result`
#       - add 1 to index
#     Return `result`