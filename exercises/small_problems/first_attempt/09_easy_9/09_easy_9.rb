=begin
------------------Understand the Problem------------
 
Grade Book:

  Write a method that determines the mean of the three scores passed to it, and returns the letter value associated with that grade

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------

- create hash with point range for key, letter grade for value
- return value if key includes point value



--------------------Algorithm-----------------------

- initialize variable `mean`, set to the result of (`a` + `b` + `c`) / 3
- case statement
 

--------------------Code With Intent-----------------
=end

def get_grade(x1, x2, x3)
  mean = (x1 + x2 + x3) / 3
  case mean
  when 90..100 then 'A'
  when 80..89  then 'B'
  when 70..79  then 'C'
  when 60..69  then 'D'
  else              'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"

# This is the same solution I came up with but I did clean it up after viewing given solution.
# Specifically, I did not know I could have a range without parentheses,
# also I forgot I could use the keyword `then` so I had put the letter grades on their own lines.