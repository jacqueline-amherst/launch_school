# Odd Numbers
#   Print all odd number from 1 to 99, inclusive, to the console, with each number on a separate line.

# (1..99).each {|num| puts num if num.odd?} # First solution

odds = 1.upto(99).select{|num| num % 2 == 1}
puts odds