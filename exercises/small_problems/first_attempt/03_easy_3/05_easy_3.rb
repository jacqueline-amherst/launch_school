# Squaring an Argument
#   Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that bomputes the square of its argument

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def exponent(num, power)
  total = num
  (power - 1).times {total = multiply(total, num)}
  total
end

p square(5) == 25
p square(-8) == 64

p exponent(6, 6)