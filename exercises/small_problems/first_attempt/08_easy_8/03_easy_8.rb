=begin
--------------- UNDERSTAND THE PROBLEM

Leading Substrings:

  Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
  The return value should be arranged in order from shortest to longest substring.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- initialize empty array, `substrings`
- initialize `index` set to 0
- lenth of string times:
  - add a substring to `substrings` that starts at index 0 and goes til index `index` of `string`
  - add 1 to `index`
- return `substrings`


--------------- CODE WITH INTENT
=end

def leading_substrings(string)
  substrings = []
  index = 0
  1.upto(string.length) do
    substrings << string[0..index]
    index += 1
  end
  substrings
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']