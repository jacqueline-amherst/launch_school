# Palindromic Strings (Part 1):
#   Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.

def palindrome?(object)
  object == object.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# Further exploration:
#   I don't know if I'm missing something, but as far as I can tell this method can already be used to determing whether an array or a string is palindromic.
