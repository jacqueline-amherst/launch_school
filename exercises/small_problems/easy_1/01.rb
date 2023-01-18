=begin
------------------Understand the Problem------------
 
Repeat Yourself:

  Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

   Input: string, integer
   Output: string

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

Given `str` and `int`

- print `str` `int` number of times

 

--------------------Code With Intent-----------------
=end

def repeat(str, int)
  int.times { puts str }
end

repeat('Hello', 3)