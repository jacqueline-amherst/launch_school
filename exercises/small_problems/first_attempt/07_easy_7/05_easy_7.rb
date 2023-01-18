=begin
--------------- UNDERSTAND THE PROBLEM

Staggered Caps (Part 1)'

  Write a method that takes a String as an argument, and returns a new String 
  that contains the original value using a staggered capitalization scheme
  in which every other character is capitalized,
  and the remaining characters are lowercase.
  Characters that are not letters should not be changed, but count as characters when switching between upper and lower case.

  Input: string
  Output: new string

  Rules:
    - alternating case -- AaBbCcDd...
    - non-alphabetic characters count but are not altered


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- convert string into an array of characters
- iterate over each character:
  - if the character is a letter
    - upcase if even index
    - downcase if odd index
- join the letters and return



--------------- CODE WITH INTENT
=end

def staggered_case(str)
  letter_arr = str.chars.each_with_index do |letter, index|
    if letter =~ /[A-Za-z]/
      index.even? ? letter.upcase! : letter.downcase!
    end
  end

  letter_arr.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'