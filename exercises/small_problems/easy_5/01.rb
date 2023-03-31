# ASCII String Value
#   Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string.
# You may use String#ord ro determine the ASCII value of a character.

def ascii_value(str)
  return 0 if str.empty?
  str.chars.map { |char| char.ord }.reduce(:+)
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# FE -- mystery method is Integer#chr.
#   Cannot be used for strings longer than one character, as the integer could be split up in many ways.
