# Bannerizer:
#   Write a method that will take a short line of text, and print it within a box.

def print_in_box(string)
  size = string.size
  puts "+-" + ('-' * size) + "-+"
  puts "| " + (' ' * size) + " |"
  puts "| " + string + " |"
  puts "| " + (' ' * size) + " |"
  puts "+-" + ('-' * size) + "-+"
end

print_in_box("Kitty Cat")
print_in_box("I LOVE BEING INSIDE THIS BOX")

# The given solution is more flexible than my solution.
# After initially trying this problem out I took about a week away studying other things
# and when I came back it was very straightforward to find a solution.
 