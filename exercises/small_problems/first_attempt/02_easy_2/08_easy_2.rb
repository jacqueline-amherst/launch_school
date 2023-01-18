# Sum or Product of Consecutive Integers
#   Write a program that asks the user to enter an integer greater than 0, 
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

puts ">> Please enter an integer greater than 0:"
integer = gets.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
sum_or_product = gets.chomp

sum = (1..integer).reduce(:+)
product = (1..integer).reduce(:*)

if sum_or_product == 's'
  puts "The sum of all integers between 1 and #{integer} is #{sum}."
elsif sum_or_product == 'p'
  puts "The product of all integers between 1 and #{integer} is #{product}."
else
  puts "That is not a valid selection."
end
