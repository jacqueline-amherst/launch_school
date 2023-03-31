# Letter Swap:
#   Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.
# You may assume that every word contains at least one letter, and that the string will alsways contain at least one word.
# You may also assume that each string contains nothing but words and spaces.

#-------------
#


def swap(sentence)
  words = sentence.split
  words.map! do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  words.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration:
#   This implementation would not work. When `word[0]` etc are passed in as arguments to a new method, the original object `word` is not available in the new method.
# Furthermore, since the original object is not available, `=` is no longer working as a setter method, but rather as simple assignment.
