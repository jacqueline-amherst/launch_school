# Convert a Signed Number to a String!

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def signed_integer_to_string(number)
  result = ''

  sign = if number > 0
    '+'
  elsif number < 0
    number = -number
    '-'
  else
    ''
  end

  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end

  result.prepend(sign)
  result
end

p signed_integer_to_string(4321) #== '+4321'
p signed_integer_to_string(-123) #== '-123'
p signed_integer_to_string(0) == '0'