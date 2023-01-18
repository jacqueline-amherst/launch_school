# Empty the Array
#   Given the array below, use loop to remove and print each name from first to last.
# Stop the loop once names doesn't contain any more elements.

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.size == 0
end

# Further exploration:
#   The names could be printed in reverse order using Array#pop instead of Array#shift