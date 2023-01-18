# Odd Lists
#   Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# First Solution:

# def oddities(array)
#   odds = []
#   array.each_with_index {|element, idx| odds.push(element) if idx.even?}
#   odds
# end

# Second Solution:

# def oddities(array)
#   array.select {|element| array.index(element).even?}
# end

# Third solution:

def oddities(array)
  array.delete_if {|element| array.index(element).odd?}
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
p oddities([1, 2, 3, 4, 1]) == [1, 3, 1]