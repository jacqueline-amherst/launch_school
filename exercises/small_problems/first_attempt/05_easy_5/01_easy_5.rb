# ASCII String Value:
#   Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character in the string.
# You may use String#ord to determine the ASCII value of a character.

def ascii_value(string)
  sum = 0
  string.chars.each { |char| sum += char.ord}
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# Although this is identical to the given solution, this is my work.

# Further Exploration:
# Answer:
#   The mystery method is Integer.chr. It will not work with anything longer that a character because there are many ways to break an integer down into constituent parts.
# You could have an array of integers and use .chr to convert individual characters to their string equivalents and join them however.
