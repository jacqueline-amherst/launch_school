=begin
------------------Understand the Problem------------
 
Reverse the Digits in a Number

  Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

   Input:
   Output:

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------



 

--------------------Code With Intent-----------------
=end

def compact_reversed_number(number)
  number.digits.join.to_i
end

def brute_force_reversed_number(number)
  result = ''

  loop do
    break if number == 0
    number, rem = number.divmod(10)
    result << rem.to_s
  end

  result.to_i
end

def reversed_number(number)
  number.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1