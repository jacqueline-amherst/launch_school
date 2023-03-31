# Short Long Short:
#   Write a method that takes two strings as arguments, determines the longest of the two strings,
#   and then returns the result of concatenating the shorter string, the longer string, and the shorter string once again.
#   You may assume that the string are of different lengths.

def short_long_short(str1, str2)
  short, long = [str1, str2].sort_by { |str| str.size }
  short + long + short
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"
