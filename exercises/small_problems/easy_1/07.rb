=begin
------------------Understand the Problem------------
 
Madlibs

  Mad libs are a simple game where you create a story template with blanks for words.
  You or another player then construct a list of words and place them into the story, creating an often silly or funny story as a result.
  Create a simple mad-lib program that prompts for a noun, a verb, an adver, and an adjective
  and injects those into a story that you create.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

puts "Enter a noun:"
noun = gets.chomp

puts "Enter a verb ending in 'ing':"
verb = gets.chomp

puts "Enter an adjective:"
adjective = gets.chomp

puts "Enter an adverb:"
adverb = gets.chomp

puts "My #{noun} is a(n) #{adjective} #{noun}. Even #{adverb} #{verb} my #{noun} is #{adjective}!"