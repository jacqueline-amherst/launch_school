# When Will I retire?
#   Build a program that displays when the user will retire and how many years she has to work til retirement.

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i
difference = retirement_age - age

current_year = Time.now.year
retirement_year = current_year + difference

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{difference} years of work to go!"