=begin
------------------Understand the Problem------------
 
What's My Bonus?

  Write a method that takes two arguments, a positive integer and a boolean,
  and calculates the bonus for a given salary.
  If the boolean is `true`, the bonus should be half of the salary.
  If the boolean is `false` the bonus should be 0

   Input: int, boolean
   Output: integer

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

Given parameters, `salary` and `bonus`

- if bonus
  - salary / 2
- else
  - 0

 

--------------------Code With Intent-----------------
=end

def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000