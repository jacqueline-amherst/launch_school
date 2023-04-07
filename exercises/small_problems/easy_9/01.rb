# Welcome Stranger:
#   Create a method that takes 2 arguments, an array and a hash.
# The areray will contain 2 or more elements that, when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation, and the appropriate values.
# Your method should return a greeting that uses the person's full name, and mentions the person's title and occupation.
#
# ----------
# input: an array and a hash
# output: a string
# 
# rules: 
#   - array contains elements that combine into a name
#   - hash contains title and occupation
#   - output needs to use all information
#
# -----------
# - set `name` to the result of joining all elements of `array` with ' '
# - set `title` to the value at `hash[:title]`
# - set `occupation` to the value at `hash[:occupation]`
# - return a string that interpolates all the variables
# --------

def greetings(array, hash)
  name = array.join(' ')
  title, occupation = hash[:title], hash[:occupation]
  "Hello, #{name}! Nice to have a #{title} #{occupation} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
#=> "Hello, John Q Doe! Nice to have a Master Plumber around."