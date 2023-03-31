# Convert a String to a Number!
#   The String#to_i method converts a string of numeric characters to an Integer.
#   String#to_i and the Integer constructor (Integer()) behave similarly.
#   In this exercise you will create a method that does the same thing.
#  Write a method that takes a String of digits, and returns the appropriate number as an integer.
#   You may not use any of the methods mentioned above.
# For now, do not worry about leading + or - signs, nor should you worry about invalid characters; assume all characters will be numeric.
# You may not use any of the standard conversion methods available in Ruby to convert a string to a number,
#   such as String#to_, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

# Create a hash to convert string to integer
# Create a method to add the correct number of zeroes
# Add all the numbers together

STR_TO_INT_CONVERSION = {
  '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, '0' => 0
}

def string_to_integer(str)
  sum = 0
  arr = str.chars
  loop do
    current_char = arr.shift
    char_as_integer = STR_TO_INT_CONVERSION[current_char]

    if arr.size == 0
      sum += char_as_integer
      break
    end

    total_char_value = char_as_integer * (10 ** arr.size)
    sum += total_char_value
  end
  
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# Understand the Problem

# input: string
# output: integer

# rules:
#   - can't use any predefined methods to convert a string to an integer
#   - all characters can be assumed to be numeric (no invalid characters)
#   - don't worry about leading + or -

# Algorithm

# 1. initialize `sum`, set to 0
# 2. initialize `array`, set to the characters of string as an array
# 3. enter loop
#   - initialize `current_char`, set to the first element of array 
#     - delete that element of array
#   - initialize `char_as_integer`, set to hash value of `current_char` as key
#   - if size of array is zero
#     - add numeric to sum
#     - break
#   - multiply numeric by 10 to the power of (size of array)
#     - add to sum
# 4. return sum