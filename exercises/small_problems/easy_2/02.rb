=begin
------------------Understand the Problem------------
 
How Big is the Room?

  Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

SQMETERS_TO_SQFEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

sqmeters = (length * width).round(2)
sqfeet = (sqmeters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{sqmeters} square meters (#{sqfeet} square feet.)"