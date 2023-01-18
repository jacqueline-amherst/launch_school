=begin
------------------Understand the Problem------------
 
Grocery List

  Write a method which takes a grocery list (array) of fruits with quantities and converts it into an array of the correct number of each fruit.

   Input: nested Array
   Output: Array

   Explicit rules:
     

   Implicit rules:


---------------------Scratch------------------------





--------------------Algorithm-----------------------

- iterate over each `element` of `list`, performing transformation:
  - `element[0]` * `element[1]` 
- flatten
 

--------------------Code With Intent-----------------
=end

def buy_fruit(list)
  itemized_list = []
  list.each do |item|
    item[1].times { itemized_list << item[0] }
  end
  itemized_list
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# I was unaware that multiple parameters could be used in the way they were in the given solution!