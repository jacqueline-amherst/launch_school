# Name Swapping:
#   Write a method that takes a first name, a space, and a last name passed as a single String argument, 
# and returns a string that contains the last name, a comma, a space, and the first name.
#
#------------
# input: string
# output: string
# rules:
#   - input is a string containing two words, first_name, last_name
#   - output is a string containing same words, in reverse, separated with a comma
# ----------
# - Separate string into array of words
# - Reverse the order of the words
# - join words with ', '
# ----------

def swap_name(string)
  string.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'