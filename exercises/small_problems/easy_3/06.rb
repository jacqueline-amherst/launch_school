# Exclusive Or
#   The || operator returns a truthy value if either or both of its operands are truthy.
#   If both operands are falsey, it returns a falsey value.
#   The && operator returns a truthy value if both of its operands are truthy,
#   and a falsey value if either operand is falsey.
#   This works great until you need only one of the two conditions to be truthy, the so-called "exclusive or".

# In this exercise, you will write a method name `xor` that takes two arguments, and returns true if exactly one of its arguments is truthy, false otherwise.
#   Note that we are looking for a boolean result instead of a truthy/falsey value as returned by || and &&

def xor?(exp1, exp2)
  (!exp1 && !!exp2) || (!!exp1 && !exp2)
end

p xor?(5.even?, 4.even?) == true
p xor?(5.odd?, 4.odd?) == true
p xor?(5.odd?, 4.even?) == false
p xor?(5.even?, 4.odd?) == false

# Further Exploration:
#   An example of when an `xor?` method might be useful:
#   You have a mailing list and would like to make sure that you have both a phone number and an email address for everyone signed up.
#   Everyone who is signed up for the list has already provided at least one of the above criteria.
#   You also have customers who have not signed up and therefore have not provided either criteria.
#   In order to only reach out to those who have signed up for the mailing list but have not provided both criteria,
#   it would make sense to find contacts who have provided exactly one of the criteria in order to ask for the other.
#
#   Further, `xor` does not and could not use short-circuit logic because it would be impossible to determine if only one of two was true without evaluating both.
