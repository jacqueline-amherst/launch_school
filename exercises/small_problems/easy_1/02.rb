=begin
------------------Understand the Problem------------
 
Odd

  Write a method that takes one integer argument, which may be positive, negative, or zero.
  This method returns `true` if the number's absolute value is odd.
  You may assume that the argument is a valid integer value.

   Input: integer
   Output: boolean

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

Given one parameter, `int`

- check whether the absolute value of `int` is NOT evenly divisible by two.
  - return `true` if true, `false` otherwise

 

--------------------Code With Intent-----------------
=end

def is_odd?(int)
  int % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# further exploration:
#   In order to make this work with the remainder operator instead of modulo,
#   I would write it out as:
#       `int.abs / 2 == 1`
#   This way the absolute value of `int` is used and we don't deal with any negative integers.