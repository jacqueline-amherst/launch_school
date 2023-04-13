# Word to Digit:
#   Write a method that takes a sentence string as input and returns the same string with any sequence of words converted to a string of digits.
# 
# ---------- Problem
# input: string
# output: the same string, mutated
# rules:
#   - any word for a single digit is replaced with an integer counterpart
# ---------- Algorithm
# - create a hash, `number_subs` with string numbers as keys and integers as values
# - for `word` in `string`:
#   - if current `word` matches a key in `number_subs`:
#     - current_word = the value of that key (the integer equivalent)
#   - otherwise it remains the same
# - return string, but mutated (use map!)
require 'pry'
require 'pry-byebug'

NUMBER_SUBS = {
  'zero' => '0', 'one' => '1', 'two' => '2',   'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}

def word_to_digit(string)
  NUMBER_SUBS.each do |str, int|
    string.gsub!(/\b#{str}\b/, int)
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'