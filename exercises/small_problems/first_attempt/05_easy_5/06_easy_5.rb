# Letter Counter (Part 1):
#   Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.
# Words consist of any string of characters that do not include a space.

#-------------------Algorithm----------------------------------
#
#
# - initialize a new hash, sizes
# - create array of words by breaking string at ' '
# - iterate over each word in string:
#   - initialize new variable, length, set to word length
#   - if sizes hash includes that length as a key:
#     - add 1 to that value
#   - otherwise:
#     - add key of that size with a value of 1
# - return sizes hash
# 
#
#--------------------Code With Intent---------------------------

def word_sizes(string)
  sizes = {}

  string.split.each do |word|
    length = word.size
    if sizes.keys.include?(length)
      sizes[length] += 1
    else
      sizes[length] = 1
    end  
  end

  sizes
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}

# I completely forgot about the concept of default values!