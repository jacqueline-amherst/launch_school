# Group Anagrams
#   Given the following array write a program that prints out groups of words that are anagrams.
# Anagrams are words that have the same exact letters in them but in a different order.
# Your output should look something like this:
# ["demo", "dome", "mode"]
# ["neon", "none"]
# (etc)
# ------------
# input: flat array of strings
# output: arrays printed to display
# rules:
#   - assumedly since this method prints to the screen it should output `nil`
#   - displays arrays of words that are anagrams
#   - anagrams are words that contain the same exact letters
#   - also an assumption -- if a word has already been printed with a group, it should not be printed in another group
# ----------
# Given `array`
# - create a duplicate `array` so that original is not modified
# - until `array` is empty:
#   - set `anagrams` to []
#   - set `current_letters` to an array containing the first word or `arr`
#     - break that word into its constituent characters
#     - sort the characters alphabetically
# ----- for `word` in `array`
#      - set `word_letters` to the sorted character of `word`
#      - compare `current_letters` to `word_letter`
#      - if the characters match:
#        - add `word` to `anagrams`
#        - destructively delete `word` from `array` 
#   - display `anagrams` is `anagrams` has a size greater than 1
# -----------------

# def display_anagrams(arr)
#   array = arr
#   until array.empty?
#     anagrams = []
#     current_letters = array.first.chars.sort
#     array.each do |word|
#       word_letters = word.chars.sort
#       if current_letters == word_letters
#         anagrams <<  word 
#         array.delete(word)
#       end
#     end
#     print anagrams if anagrams.size > 1
#   end
# end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  result = {}

  words.each do |word|
    key = word.split('').sort.join
    if result.has_key?(key)
      result[key].push(word)
    else
      result[key] = [word]
    end
  end
  
  result.each_value do |v|
    puts "------"
    p v
  end