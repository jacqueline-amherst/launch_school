# Convert a String to a Signed Number!:
# Extend the previous method to work with signed numbers.
# If the first character is a +, return a positive number
# if -, return a negative number
# if no sign, return positive.

# 1. Determine if the string contains the characters '+' or '-'
# 2. If it does


DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end