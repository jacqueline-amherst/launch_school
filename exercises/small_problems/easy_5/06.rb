# Letter Counter (Part 1)
#   Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

#---------------
# input: string
# outpu: hash
#
#----------------
#
# - initialize empty hash, `result`
# - convert string to an array (`words`) of constituent words
# - transform the words into integers representing their respective length
# - sort the lengths
# - initialize new array, keys, containing only the uniq elements of `words`
# - iterate over each element of `keys`:
#   - for each element, create a new key in `result` with element as key and the number of element contained in `words` as value
#

def word_sizes(string)
  words = string.split.map! { |word| word.size }.sort
  keys = words.uniq
  keys.each_with_object({}) do |key, hash|
    value = words.count(key)
    hash[key] = value
  end
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}