# Letter Swap:
#   Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.
# You may assume that every word contains at least one letter, and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces.

#--------------------Algorithm----------------------------------
#
#
# - Convert string into an array of words by splitting at whitespace (.split(' '))
# - Using transformation (.map), iterate over each word:
#   - initialize two variables, first_letter, last_letter
#   - destructively delete and return the first then last letter of word to set the variables from last step
#     - first_letter, last_letter = word.shift, word.pop
#   - append first_letter, prepend last_letter to word
# - Join the returned array using whitespace (.join(' '))
# - Return new string
# 
#
#--------------------Code With Intent----------------------------

def swap(string)
  new_string = string.split(' ').map do |word|
    chars = word.chars
    first_letter = chars.shift
    last_letter = chars.pop
    chars.prepend(last_letter)
    chars.append(first_letter)
    chars.join
  end

  new_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# I feel like my solution is pretty clunky. It would probably have been a good idea to refactor, but I am trying to get better at creating and following algorithms.

# Further exploration: 
#   This method would not work because it is not destructive, or even performing transformation.
# Re-assignment within the scope of this method is not available within the scope of the parent method.