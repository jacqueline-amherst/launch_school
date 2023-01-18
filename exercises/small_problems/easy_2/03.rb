=begin
------------------Understand the Problem------------
 
Tip Calculator:

  Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
  The program must compute the tip and then display both the tip and the total amount of the bill.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = (gets.chomp.to_f * 0.01)

tip_total = (bill * tip_percentage).round(2)
bill_total = (bill + tip_total).round(2)

puts "The tip is $#{sprintf('%.2f', tip_total)}"
puts "The total is $#{sprintf('%.2f', bill_total)}"