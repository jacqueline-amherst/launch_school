# Fibonacci Number Location by Length
#   The Fibonacci series is a series of numbers such that the first 2 numbers are 1 by definition,
# and each subssequent number is the sum of the two previous numbers.
# This series appears throughout the natural world.
#
# Computationally, the Fibonacci series is a very simple series,
# but the results grow at an incredibly rapid rate.
# For example, the 100th Fibonacci number is 354,224,848,179,261,915,075.
# That's enormous, especially considering that it takes 6 iterations before it generates the first 2 digit number.
#
# Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument.
# The first Fibonacci number has index 1.
# You may assume that the argument is always greater than or equal to 2.

#--------------------Algorithm----------------------------------
#
#
# - initialize array `fib` containing [1, 1] 
# - initialize variable `current_number` as 0
# - Enter a loop
#   - Generate Fibonacci numbers, adding each number to an array.
#     - current_number = fibonacci_array.last(2).reduce(:+)
#   - Check the size of each number
#   - Break once a number is of the desired size
# - return the last index number

def find_fibonacci_index_by_length(length)
  fibonacci_array = [1, 1]
  loop do
    current_number = fibonacci_array.last(2).reduce(:+)
    fibonacci_array << current_number
    break if current_number.digits.size >= length
  end

  fibonacci_array.size
end

p find_fibonacci_index_by_length(7)

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847