# How Many:
#   Write a method that counts the number of occurences of each element in a given array.
# The words in the array are case-sensitive so  'suv' != 'SUV'.
# Once counted, print each element alongside the number of occurences.
#
# -----------
# input: an array
# output: display "element => occurences"
# 
# rules:
#   - elements are case sensitive
#
# ------------
# - set `results` to Hash.new(0)
# - for `element` in `array`:
#   - `results`[`element`] += 1
# - return `results`
# ----------
#

def count_occurrences(array)
  results = Hash.new(0)
  array.each { |element| results[element] += 1 }
  results.each { |element, occurences| puts "#{element} => #{occurences}" }
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

p count_occurrences(vehicles)