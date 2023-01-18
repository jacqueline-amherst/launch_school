# ddaaiillyy ddoouubbllee:
#   Write a method that takes a string argument and returns a new string that contains the value of the original string
# with all consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze
#--------------------Algorithm----------------------------------
#
# - initialize empty string, single_char_string
# - break string into an array of its constituent characters
# - iterate over each character, including its index number
#   - add each character to single_char_string
#     - unless character == string[current_index + 1]
# - return single_char_string
#
#--------------------Code With Intent-------------------------

def crunch(string)
  no_duplicates = ''
  string.chars.each_with_index {|char, idx| no_duplicates << char unless char == string[idx +1] }
  no_duplicates
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''