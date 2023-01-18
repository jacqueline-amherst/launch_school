=begin
------------------Understand the Problem------------
 
How Old is Teddy?

  Build a program that randomly generates and prints Teddy's age.
  To get the age you should generate a random number between 20 and 200

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

#ages = (20..200).to_a
#puts "Teddy is #{ages.sample} years old!"

# Further Exploration:

age = rand(20..200)

puts 'Please enter a name:'
name = gets.chomp
name = 'Teddy' if name == ''

puts "#{name} is #{age} years old!"