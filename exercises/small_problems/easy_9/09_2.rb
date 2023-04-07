# Group Anagrams:
#   Recreating the given solution:
# ----------
# - iterate over array
# - sort each word into alphabetical order
# - if key exists append current word to value (array)
# - otherwise, add a new key with this sorted word
# ----------
# - set `result` to {}
# - for `word` in `array`:
#   - set `key` to `word` in alphabetical order
#   - if `result` already contains `key` as a key:
#     - append `word` to value
#   - else:
#     - add new key with `word` as value
#

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}
words.each do |word|
  key = word.chars.sort.join
  if result.key?(key)
    result[key].push(word)
  else
    result[key] = [word]
  end
end

result.values.each do |value|
  print value
  puts ''
end
