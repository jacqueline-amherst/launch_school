# Palindromic Strings (Part 1)
#   Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
# For this exercise, case matters as does punctuation and spaces.

def palindrome?(object)
  object == object.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Maybe I'm missing something with the further exploration, but as far as I can tell this method works just fine for either strings or arrays...