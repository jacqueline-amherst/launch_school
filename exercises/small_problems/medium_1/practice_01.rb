# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'


# Given an array of strings, return an array containing the characters that are present in all strings in the given array.

p common_chars(["bella","label","roller"]) == ["e","l","l"]
p common_chars(["cool","lock","cook"]) == ["c","o"]
p common_chars(["car", "racecar", "rat"]) == ["a","r"]
p common_chars(["abc", "def","hij"]) == []