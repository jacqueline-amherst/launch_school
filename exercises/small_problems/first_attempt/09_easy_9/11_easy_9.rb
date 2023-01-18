=begin
------------------Understand the Problem------------
 
Group Anagrams

  Write a program that prints out groups of words that are anagrams.
  Anagrams are words that have the same exact letters in them but in a different order.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------

Issues:
  - if an element is deleted during iteration it will cause problems



--------------------Algorithm-----------------------

- create duplicate of parameter, `words`
- create empty array, `anagrams`
- enter loop:
  - break if size of `words` == 0
  - initialize variable, `current_word`, set to `words[0]` as a sorted array of characters
  - iterate over each word
    - convert word to sorted array of characters
    - compare to current_word:
      - if same, add to `anagrams` and destructively delete from `words`
        (this should always add the first word)
    - set `current word` to `words[0]` as a sorted array of characters

--------------------Code With Intent-----------------
=end
require 'pry'

def find_anagrams(arr)
  words = arr.clone
  anagrams = []

  loop do
    break if words.size == 0
    sub_arr = []
    current_word = words[0].chars.sort

    words.each do |word|
      if word.chars.sort == current_word
        sub_arr << word
      end
    end
    sub_arr.each { |word| words.delete(word) }
    anagrams << sub_arr
  end

  anagrams
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

p find_anagrams(words)