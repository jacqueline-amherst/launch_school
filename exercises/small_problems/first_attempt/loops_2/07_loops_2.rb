# Stop Counting
#   The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

5.times do |index|
  puts index
  break if index == 2
end

# Further exploration 1:
#   Five values will be printed out because this code iterates from index 0 to 4.

# Further exploration 2:
#   Only one value will be printed -- the code is guaranteed to run once, but when the break statement is reached it will exit because all indexes in this example are < 7.