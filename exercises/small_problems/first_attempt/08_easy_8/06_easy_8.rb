=begin
--------------- UNDERSTAND THE PROBLEM

FizzBuzz

Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers from the starting number to the ending number,
except if a number is divisible by 3, print "Fizz",
if a number is divisible by 5, print "Buzz", 
and if the number is divisible by 3 and 5, print "FizzBuzz"

  Input: two integers
  Output: a series of strings

  Rules:


--------------- EXAMPLES // TEST CASES




--------------- DATA STRUCTURES




--------------- ALGORITHM

- for each `int` between `start` and `end`
  - if `int` is evenly divisible by both 3 and 5
    - print "FizzBuzz"
  - if `int` is divisible by 3
    - print "Fizz"
  - if `int` is divisible by 5
    - print "Buzz"
  - otherwis just print `int`


--------------- CODE WITH INTENT
=end

def fizzbuzz(start, stop)
  for num in (start..stop)
    if num % 3 == 0 && num % 5 == 0
      puts 'FizzBuzz'
    elsif num % 3 == 0
      puts 'Fizz'
    elsif num % 5 == 0
      puts 'Buzz'
    else
      puts num
    end
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# I didn't realize the output was supposed to be on one line...
# Should have considered that.
# Thought about using a case statement, but didn't know I could use one without a value!
# Eventually I imagine that I'll get better at knowing when to write helper methods.
