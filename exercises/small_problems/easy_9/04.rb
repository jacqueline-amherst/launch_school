# How Long Are You?
#   Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length.
# You may assume that words in the string are separated by exactly one space and that any substring on non-space characters is a word.
#
# --------------
# - input: string
# - array of strings
# - rules:
#   - each element of the output array is a string containing one word and the length of that word
#     - i.e. "cow 3" because "cow" has 3 characters
# --------------
# - separate `string` into its component `words`
# - for each `word` in `words`:
#   - determine `length` of `word`
#   - add length (as a string representation of an integer) to string, separated with a space (i.e. "cow", "3" joined = "cow 3")
#   - add new string with number to `array`
# - return `array`
# ---------------

def word_lengths(string)
  string.split.map { |word| word + ' ' + word.size.to_s }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []