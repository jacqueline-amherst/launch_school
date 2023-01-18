# How Many?
#   Write a method that counts the number of occurrences of each element in a given array.

def count_occurrences(array)
  values = {}
  array.uniq.each {|element| values[element] = array.count(element)}
  values.each {|key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

# I suppose I should start reflecting more on what I have been studying and use that knowledge to my benefit.
# It seems so clear after viewing the given solution that I could simplify my code by using a hash and setter methods...
# The below is my first attempt at solving this problem. It works but is not very elegant.
# The above solution is my second attempt.

=begin
  
rescue => exception
  
end
def count_occurrences(arr)
  unique_elements = arr.uniq

  loop do
    break if unique_elements.size == 0
    current_element = unique_elements.shift
    counter = 0
    arr.each {|el| counter += 1 if el == current_element}
    puts "#{current_element} => #{counter}"
  end
end

=end
