# Uppercase Check:
#   Write a method that takes a string argument, and returns true if all the alphabetic characters inside the string are uppercase, false otherwise.
#   Characters that are not alphabetic should be ignored.

def uppercase?(str)
  str == str.upcase
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Further exploration:
#   Does it make sense that `uppercase?` returns true when given an empty string?
#   I think that this is a matter of preference and implementation.
#   If we're specifically looking for uppercase characters then it would make sense for '' to return false.
#   As the problem has been presented '' returning true has no negative side effects and is in line with the prompt.
