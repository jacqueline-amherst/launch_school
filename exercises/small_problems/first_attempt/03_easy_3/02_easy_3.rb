# Arithmetic Integer
#   Write a program that prompts the user for two positive integers,
# then prints the results of the following operations on those two numbers:
# addition, subtraction, product, quotient, remainder, and power.
# Do not worry about validating the input.

operators = [:+, :-, :*, :/, :%, :**]

puts "==> Enter the first number:"
first_num = gets.to_i

puts "==> Enter the second number:"
second_num = gets.to_i

operators.each do |operator|
  result = [first_num, second_num].inject(operator)
  puts "#{first_num} #{operator.to_s} #{second_num} = #{result}"
end

# Although I see a lot of others have found the same solution using an array to hold operators as symbols,
# I was very proud to have come up with this solution!
# It was the first time I had gotten so excited about solving a problem creatively.