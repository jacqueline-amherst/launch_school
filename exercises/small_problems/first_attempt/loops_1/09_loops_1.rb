# That's Odd
#   The code below shows an example of a for loop. Modify the code se that it only outputs i if i is an odd number.

for i in 1..100
  next if i.odd?
  puts i
end