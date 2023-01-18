# Exclusive Or:
#   The || operator returns a truthy value if either or both of its operands are truthy. If both operands are falsey, it returns a falsey value.
# The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either operand is falsey.
# This works great until you need only one of the two conditions to be truthy, the so-called "exclusive or"

# In this exercise, you will write a method name `xor` that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise. 
# Not that we are looking for a boolean result instead of a truthy/falsy value as returned by || and &&.

def xor?(first_exp, second_exp)
  (first_exp || second_exp) && (!first_exp || !second_exp) ? true : false
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Further exploration
# Situations in which a boolean xor method would be useful:
#    - (fill in later)
#
# Does an xor method perfor short-circuit evaluations? Why or why not?
# Answer:
#   No. An xor method cannot perform short-circuit operations because it must check both expressions:
# there's no way to tell if one is true and the other is false if both are not checked.