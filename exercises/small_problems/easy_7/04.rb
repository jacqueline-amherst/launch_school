# Swap Case
#   Write a method that takes a string as an argument and 
# returns a new string in which every uppercase letter is replaced by lowercase and vice versa.
# All other character should be unchanged.
# You may not use #swapcase.
#
# ------------
# input: string
# output: new string
#
# rules:
#   - uppercase becomes lowercase, lower becomes upper
#   - non-alphabetic characters are unchanged
#   - output must be new string
#
# -------------
# - convert string to array of words
# - convert words to array of its characters
# - for char in characters:
#   - check the ASCII value of the character
#     - if ASCII is between 97 - 122
#       - subtract 32 and convert back to string
#     - if ASCII is between 65 - 90
#       - add 32 and convert back to string
#     - otherwise leave the character as is
# - rejoin characters

def swapcase(string)
  words = string.split
  words.each do |word|
    word.chars.each_with_index do |char, idx|
      if (97..122).include?(char.ord)
        word[idx] = (char.ord - 32).chr
      elsif (65..90).include?(char.ord)
        word[idx] = (char.ord + 32).chr
      end
    end
  end
  words.join(' ')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'