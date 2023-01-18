# Tip Calculator:
#   Create a simple tip calculator. The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip and the total amount of the bill.

puts "What is the bill?"
bill = gets.to_f

puts "What is the tip percentage?"
percent = gets.to_f * 0.01

tip = bill * percent
total = bill + tip

puts "The tip is $#{sprintf("%.2f", tip)}"
puts "The total is $#{sprintf("%.2f", total)}"
