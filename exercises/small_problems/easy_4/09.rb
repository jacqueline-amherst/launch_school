# Convert a Number to a String!

DIGITS = {
  1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
  6 => '6', 7 => '7', 8 => '8', 9 => '9', 0 => '0'
}

def integer_to_string(integer)
  return '0' if integer == 0
  string = ''

  until integer == 0
    integer, remainder = integer.divmod(10)
    string.prepend(DIGITS[remainder])
  end

  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'