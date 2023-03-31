# Convert a String to a Signed Number!
#   Write a method that takes a String of digits and returns the appropriate number as an integer.
#   The String may have a leading + or -. If the first character is a + your method should return a positive number.
#   If it is a - your method should return a negative number. 
#   If no sign is given you should return a positive number.
#   You may assume the string will always contain a vaild number.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
  '-' => 0, '+' => 0
}

def string_to_signed_integer(string)
  negativity =  string.include?('-')
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value = -value if negativity

  value
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# - If the first character is '+', delete it.
# - If the first character is '-', delete it but save that info.
# - Continue on.
# - If negative, self = -self