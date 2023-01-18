# Conditional Loop
#   Write an if/else statement that executes some code if the process_th_loop variable is true and some other code when false
# - When process_the_loop is true, execute a loop that iterates exactly once and prits "The loop was processed"
# - When false, print "The loop wasn't processed!"

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop was not processed!"
end