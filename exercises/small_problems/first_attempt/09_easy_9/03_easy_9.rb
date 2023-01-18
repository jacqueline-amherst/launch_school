# ------------------Understand the Problem------------
# 
# Always Return Negative
#
#   Write a method that takes a number as an argument.
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number
#
#   Input: integer
#   Output: negative integer
#
#   Explicit rules:
#     
#
#   Implicit rules:
#
#
#---------------------Scratch------------------------
#
#
#
#
#
#--------------------Algorithm-----------------------
#
# - if int is positive
#   - subtract (int * 2)
# - otherwise return int 
#
# 
#
#--------------------Code With Intent-----------------

def negative(int)
  int.positive? ? int - (int * 2) : int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby