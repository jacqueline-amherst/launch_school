=begin
------------------Understand the Problem------------
 
Uppercase Check

  Write a method that takes a string argument, and returns `true` if all the alphabetic characters inside the string are uppercase, `false` otherwise.
  Characters that are not alphabetic should be ignored.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

- initialize constant, `ALPHA` containing the letters 'A'-'Z'

- enter method:
  - initialize new array, alpha-chars
  - iterate over each character of `string`:
    - if the uppercased letter is contained in ALPHA, add to `alpha-chars`
  - iterate over each element of `alpha-chars`:
    - if element is included in ALPHA, next
    - otherwise, return false

 

--------------------Code With Intent-----------------
=end

ALPHA = ('A'..'Z').to_a

def uppercase?(string)
  alpha_chars = string.chars.select { |char| ALPHA.include?(char.upcase)}
  alpha_chars.all? { |char| ALPHA.include?(char) }
end

p uppercase?('t') #== false
p uppercase?('T') #== true
p uppercase?('Four Score') #== false
p uppercase?('FOUR SCORE') #== true
p uppercase?('4SCORE!') #== true
p uppercase?('') #== true