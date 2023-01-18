=begin
------------------Understand the Problem------------
 
Stringy Strings:

  Write a method that takes one argument, a positve integer, and returns a string of alternating 1s and 0s, always starting with 1.
  The length of the string should match the given integer.

   Input: integer
   Output: string containing integers

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

Given parameter `int`

- initialize `counter` set to 0
- initialize `result` set to ''
- `int` number of times do this:
  - if counter is even
    - add '1' to `result`
  - if counter is odd
    - add '0' to `result`
  - add 1 to `counter`
- return `result`
 

--------------------Code With Intent-----------------
=end

def stringy(int)
  counter = 0
  result = ''

  int.times do
    if counter.even?
      result << '1'
    elsif counter.odd?
      result << '0'
    end

    counter += 1
  end

  result
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'