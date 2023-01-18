=begin
--------------- UNDERSTAND THE PROBLEM

Double Char (Part 2)

  Write a method that takes a string and retuns a new string in which every consonant character is doubled.
  Vowels, digits, punctuation, and whitespace should not be doubled.

  Input:
  Output:

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES

CONSONANTS = "bcdfghjklmnpqrstvwxyz"


--------------- ALGORITHM




--------------- CODE WITH INTENT
=end

CONSONANTS = "bcdfghjklmnpqrstvwxyz"

def double_consonants(string)
  result = ''
  string.chars.each do |char|
    if CONSONANTS.include?(char.downcase)
      result << char << char
    else
      result << char
    end
  end
  result
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""