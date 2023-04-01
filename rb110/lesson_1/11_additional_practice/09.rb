# As we have seen previously we can use some built-in string methods to change the case of a string.
# A notably missing method is something provided in Rails, but not in Ruby itself... titleize.
# This method in RoR creates a string that has each word capitalized as it would be in a title.
# Write your own version of the `titleize` implementation.

def titleize(string)
  words = string.split
  words.map! { |word| word.capitalize }
  words.join(' ')
end

words = "the flintstones rock"
p titleize(words)
