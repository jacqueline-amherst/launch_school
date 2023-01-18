=begin
--------------- UNDERSTAND THE PROBLEM

Get the Middle Character

  Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.
  If the argument has an odd length you should return exactly one character.
  If the argument has an even length you should return exactly two characters.

  Input: string
  Output: string

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- determine the length of string
- if length is odd:
  - divide by 2 and return the character at that index
  (i.e. 5 / 2 = 2, return char at index 2)
- if length is even:
  - divide by 2 and return the character at that index and the previous index
  (i.e. 6 / 2 = 3, return characters at 2..3)


--------------- CODE WITH INTENT
=end

def center_of(string)
  length = string.length
  center = length / 2
  length.odd? ? string[center] : string[(center -1), 2]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'