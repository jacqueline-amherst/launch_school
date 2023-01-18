# Searchin 101
#   Write a program that solicits 6 numbers from the user, 
# then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

numbers = []
ordinals = ['1st', '2nd', '3rd', '4th', '5th']

ordinals.each do |ordinal|
  puts "Enter the #{ordinal} number:"
  numbers << gets.to_i
end

puts "Enter the last number:"
last_num = gets.to_i

if numbers.include?(last_num) 
  puts "The number #{last_num} appears in #{numbers}"
else
  puts "The number #{last_num} does not appear in #{numbers}"
end
