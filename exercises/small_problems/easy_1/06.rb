=begin
------------------Understand the Problem------------
 
Right Triangles: 

  Write a method that takes a positive integer, `n`, as an argument, and displays a right triangle whose sides each have `n` stars.
  The hypotenuse of the triangle (The diagonal side in the images below) should have one end at the lower-left of the triangle, and the other end at the upper-right.

   Input: integer
   Output: a right triangle

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------

4 / 1
3 / 2
2 / 3
1 / 3
5 / 0

    *
   **
  ***
 ****
*****


--------------------Algorithm-----------------------

Given parameter `side_length`

- initialize `counter` set to 1
- enter loop:
  - break if `counter` is equal to `side_length`
  - print (' ' * side_length - counter) + ('*' * counter)
  - add one to counter
 

--------------------Code With Intent-----------------
=end

def triangle(side_length)
  counter = 1
  loop do 
    puts (' ' * (side_length - counter)) + ('*' * counter)
    break if counter == side_length
    counter += 1
  end
end

triangle(9)