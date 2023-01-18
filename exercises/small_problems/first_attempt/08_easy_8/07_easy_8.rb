=begin
--------------- UNDERSTAND THE PROBLEM

Double Char (Part 1)

  Write a method that takes a string and returns a new string in which every character is doubled.

  Input: string
  Output: new string

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- given one parameter, `string`
- initialize array, `chars`, containing the characters of `string`
- initialize empty string, `doubled_string`
- iterate over each element (`char`) of `chars`:
  - add `char` to `doubled_string` twice
- return `doubled_string`


--------------- CODE WITH INTENT
=end

def repeater(string)
  chars = string.chars
  doubled_string = ''
  chars.each { |char| 2.times { doubled_string << char } }
  doubled_string
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''

# i should start using the stock name `result`! It's nice and simple