# Counting the Number of Characters
#   Write a program that will ask a user for an input of a word or multiple words
# and give back the number of characters. Spaces should not be counted as a character.

puts "Please write a word or multiple words:"
words = gets.chomp
number_of_chars = words.delete(' ').size

puts "There are #{number_of_chars} characters in #{words}."