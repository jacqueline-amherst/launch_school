# Only Even
#   Using next, modify the code below so that it only prints positive integers that are even.

number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end

# Further exploration:
#   next has to be placed after the incrementation of number or it would be evaluating the previous iteration.
#   next has to be before puts otherwise it will print the odd numbers.