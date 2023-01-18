# Control the Loop
#   Modify the following loop so it iterates 5 times instead of just once.

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  break if iterations > 5
end

# Further Exploration:
#   If the break statement was moved up one line so it runs before iterations is incremented,
# the break statement would have to be changed to `break if iterations == 5 (or >= 5`)`
# Otherwise it will increment to 6 before breaking.