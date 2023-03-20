# Arithmetic Integer
#   Write a program that prompts the user for two positive integers,
#   and then prints the results of the following operation on those two numbers:
#   addition, subtraction, product, quotient, remainder, and power.
#   Do not worry about validating the input.

operators = [:+, :-, :*, :/, :%, :**]
chosen_nums = []
ordinals = ["first", "second"]

for ord in ordinals
  puts "==> Enter the #{ord} number:"
  chosen_nums << gets.chomp.to_i
end

operators.each do |op|
  result = chosen_nums.inject(op)
  num_one, num_two = chosen_nums.first, chosen_nums.last
  puts "==> #{num_one} #{op} #{num_two} = #{result}"
end
