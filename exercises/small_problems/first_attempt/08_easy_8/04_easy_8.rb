=begin
--------------- UNDERSTAND THE PROBLEM

All substrings:

  Write a method that returns a list of all substrings of a string. 
  The returned list should be ordered by where in the string the substring begins.
  This means that all substrings that start at position 0 should come first, 
  then all substrings that start at position 1 and so on.
  Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- initialize a copy of string, `copy`
- enter loop:
  - break if the length of `copy` is 0
  - initialize `index`, set to 0
  - add substing to `substrings`
  - add 1 to index
  - delete first character from `copy`
- return substrings


--------------- CODE WITH INTENT
=end

def all_substrings(string)
  substrings = []
  copy = string.clone
  loop do
    break if copy.size == 0
    index = 0
    1.upto(string.length) do
      substrings << copy[0..index]
      index += 1
    end
    copy.delete!(copy[0])
  end
  substrings.uniq
end

p all_substrings('abc') #== ['a', 'ab', 'abc']
#p all_substrings('a') == ['a']
#p all_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']