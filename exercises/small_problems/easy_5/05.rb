# Clean up the words:
#   Given a string that consists of some words (all lowerase) and an assortment of non-alphabetic characters,
# Write a method that returns that string with all of the non-alphabetic characters replaed by spaces.
# If one or more non-alphabetic characters occur in a row, you should only have one spae in the result
# (The result should never have consecutive spaces)

#-------------
# input: string
# output: same string, modified
# 
# rules:
#   - all non-alphabetic characters are changed to spaces
#   - there are no consecutive spaces
#
# ----------
# Initialize constant containing
#
# Given string
# - break string into characters (chars)
# - iterate over each character:
#   - if character is non-alphabetic, replace with ' '
# - iterate over each character again with its index:
#   - if character is ' ' and the character at the previous index is also ' ',
#     - delete character
# - join characters
# -----------

ALPHABETIC_CHARS = ('A'..'z').to_a

def cleanup(string)
  chars = string.chars
  chars.map! { |char| ALPHABETIC_CHARS.include?(char) ? char : ' ' }
  chars.join.squeeze(' ')
end

p cleanup("---what's my +*& line?") #== ' what s my line '