# Searching 101
#   Write a program that solicits 6 numbers from the user,
#   then prints a message that describes whether or not the 6th number appears amongst the fie first 5 numbers.

def prompt(txt)
  puts "==> Enter the #{txt} number:"
end

ordinals = ["1st", "2nd", "3rd", "4th", "5th", "last"]
chosen_nums = []

ordinals.each do |ord|
  prompt(ord)
  chosen_nums << gets.chomp.to_i
end

last_num = chosen_nums.pop

if chosen_nums.include?(last_num)
  puts "The number #{last_num} appears in #{chosen_nums}."
else
  puts "The number #{last_num} does not appear in #{chosen_nums}"
end
