# Convert a String to a Number!:
#   The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer.
# String#to_i and the Integer constructor (Integer()) behave similarly.
# In this exercise, you will create a method that does the same thing.

# Write a method that takes a String of digits, and returns the appropriate number as an integer.
# You may not use any of the methods mentioned above.
# Assume all characters will be numeric.

# ----------------------ALGORITHM------------------------------------
# Initialize hash constant, CONVERSION, containing numeric strings as keys and corresponding integers as values, 0-9
#   i.e. { '0' => 0, '1'}
# 
# - initialize variable sum, set to 0
# - initialize variable, string_digits, set to string as an array (string_digits = string.chars)
# - 
# - Enter LOOP:
#   - break if there are no more characters left in string_chars
#   - using Array#shift, delete the first element of string_digits and use to set new variable, current_digit
#   - set new variable, current_size as the size of string_digits (current_size = string_digits.size)
#   - add to sum the result of calling the add_zeroes method with the arguments (current_digit, current_size)
#   - end
# -return sum
#
#
# --------method: add_zeroes------------
#
# - input: digit, number of zeroes to add
# - output: an integer
#
# - set variable, tens, to 1
# - do this number_of_zeroes times:
#   - tens = tens * 10
# - return number * tens
#
# --------method: convert----------------
# 
# - input: an array of strings
# - output: an array of integers
#
# - using #map (|num|) do the following:
#   - num = CONVERSION[num]

STR_TO_INT_CONVERSION = {
  '0' => 0,   '1' => 1,   '2' => 2,   '3' => 3,   '4' => 4,
  '5' => 5,   '6' => 6,   '7' => 7,   '8' => 8,   '9' => 9
}

def add_zeroes(digit, number_of_zeroes)
  tens = 1
  number_of_zeroes.times {tens = tens * 10}
  digit * tens
end

def string_to_integer(string)
  sum = 0
  digits = string.chars.map {|num| num = STR_TO_INT_CONVERSION[num]}

  until digits.size == 0
    current_digit = digits.shift
    current_size = digits.size
    sum += add_zeroes(current_digit, current_size)
  end

  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

