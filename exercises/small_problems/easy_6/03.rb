# Fibonacci Number Location By Length:
#   Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument.
# You may assume that the argument is always >= 2
#
# ------------
# input: an integer - number of digits required
# output: a different integer - the index of first fib number with required number of digits
#
# -------------
# - set fibonacci_numbers to [1, 1]
# - enter loop:
#   - add the sum of the last two fibonacci_numbers to fibonacci_numbers
#   - if the last number in fibonacci_numbers has a length of number_of_digits when converted to a string
#   - return that number's index
# ------------

def find_fibonacci_index_by_length(number_of_digits)
  fibonacci_numbers = [0, 1, 1]
  loop do
    fibonacci_numbers << (fibonacci_numbers.last(2).inject(:+))
    last_number = fibonacci_numbers[-1]
    if last_number.to_s.length == number_of_digits
      return fibonacci_numbers.index(last_number)
    end
  end
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847