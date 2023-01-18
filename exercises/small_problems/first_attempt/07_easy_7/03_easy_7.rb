=begin
--------------- UNDERSTAND THE PROBLEM

Capitalize Words:

  Write a method that takes a single String argument 
  and returns a new string that contains the original value of the argument
  with the first charcter of every word capitalized and all other letters lowercase.

  You may assume that words are any sequence of non-blank characters.

  Input: String
  Output: new string

  Rules:
    - capitalize each word


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- separate string into its component words
- iterate over each word


--------------- CODE WITH INTENT
=end

def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
