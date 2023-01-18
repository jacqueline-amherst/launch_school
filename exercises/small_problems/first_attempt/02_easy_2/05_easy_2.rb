# Greeting a User
#   Write a program that will ask for user's name. The program will then greet the user.
# If you user writes "name!" then the computer yells back to the user.

puts "What is you name?"
name = gets.chomp

if name[-1] == "!"
  name = name.upcase.chop
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name.capitalize}."
end