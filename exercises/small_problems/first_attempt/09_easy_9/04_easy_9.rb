=begin
------------------Understand the Problem------------
 
Counting Up:

  Write a method that takes an integer argument, and returns an Aray of all integers, in sequence, between 1 and the argument.
  You may assume that the argument will always be a valid integer that is greater than 0.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

- initialize empty array, `numbers`
- create a range from 1 up to `target`
- iterate over each integer in range:
  - add each integer to `numbers`
- return `numbers`

 

--------------------Code With Intent-----------------
=end

def sequence(target)
  numbers = []
  (1..target).each { |num| numbers << num }
  numbers
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]