=begin
------------------Understand the Problem------------
 
Name Swapping:

  Write a method that takes a first name, a spae, and a last name passed as a single string argument,
  and returns a sting that contains the last name, a comma, a space, and the first name.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

def swap_name(full_name)
  first, last = full_name.split[0], full_name.split[1]
  last + ', ' + first
end

p swap_name('Joe Roberts') == 'Roberts, Joe'