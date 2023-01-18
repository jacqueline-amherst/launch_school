require 'pry'
=begin
--------------- UNDERSTAND THE PROBLEM

  Suppose we need a method that retrieves the middle word of a phrase/sentence.
  What edge cases need to be considered?
  How would you handle those edge cases without ignoring them?
  Write a method that returns the middle word of a phrase or sentence.
  It should handle all the edge cases you thought of.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES

Edge cases:
  - str contains zero words
    - there is no middle
  - str contains one word
    - the one word is the middle
  - str contains even number of words
    - option 1 = 
      - there is no middle
    - option 2 =
      - return the words on either side of middle
      - i.e. given 6 words return words at 3, 4


--------------- DATA STRUCTURES

to find middle:
mid_index = (num / 2.0).ceil


--------------- ALGORITHM

- split str into constituent words
- determine number of words
- if zero words, or an even number of words
  - print "There is no middle word in this string."
- if there is an odd number of words
  - determine the middle index
  - return word at that index


--------------- CODE WITH INTENT
=end

def find_middle_word(str)
  words = str.split
  if words.size.even? || words.empty?
    puts "There is no middle word in this String."
  elsif words.size.odd?
    mid_index = words.size / 2
    puts "#{words[mid_index]} is the middle word."
  end
end

find_middle_word("")
find_middle_word("A bird")
find_middle_word("A rooster crowed")
find_middle_word("A fine day to be a chicken.")