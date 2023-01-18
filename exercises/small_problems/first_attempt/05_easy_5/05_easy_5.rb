# Clean Up the Words:
#   Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row, you should only have one space in the result
# (the result should never have consecutive spaces.)
#--------------------Algorithm----------------------------------
#
#
# - Replace all non-alphabetical characters with a space
#   - word.gsub!(/[^a-z]/, ' ')
# - Replace any instance of consecutive spaces with a single space.
#   - initialize an empty string, new_string
#   - iterate over each character of string with its index:
#   - unless character = ' ' and the character at the next index is also ' '
#   - add character to new_string
#   - return new string
#
#--------------------Code With Intent----------------------------

def cleanup(string)
  string.gsub!(/[^a-z]/, ' ')
  new_string = ''

  string.chars.each_with_index do |char, index|
    new_string << char unless char == ' ' && string[index + 1] == ' '
  end

  new_string
end

p cleanup("---what's my +*& line?") #== ' what s my line '

# I had a feeling there was a method to eliminate the extra spaces!
# Didn't want to go method-hunting though.
# I feel like I did a good job with my algorithm. Getting better.