# Squaring an argument
#   Using the multiply method from the "Multiplying two numbers" problem,
#   write a method that computes the square of its argument.

def multiply(n1, n2)
  n1 * n2
end

def square(num)
  multiply(num, num)
end

def power_of(num, power)
  num2 = num
  (power - 1).times do
    num2 = multiply(num2, num)
  end

  num2
end

#p square(5) == 25
#p square(-8) == 64
p power_of(5, 5)