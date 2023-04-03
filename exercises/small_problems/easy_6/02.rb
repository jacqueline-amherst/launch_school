# Delete Vowels
#   Write a method that takes an array of strings and returns an array of the same string values, except with the vowels removed

# -----------
# input: array of strings
# output: new array of same strings minus vowels
#
# rules:
#   - the vowels must be removed from each string
# ------------

def remove_vowels(string)
  string.map { |word| word.delete('AEIOUaeiou')}
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']