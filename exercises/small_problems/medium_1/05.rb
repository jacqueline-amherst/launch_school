# Diamonds!
#   Write a method that displays a 4-pointed diamond in an n x n grid, 
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.
#
# --------- Problem
# input: an integer
# output: a diamond pattern printed to the display
# rules:
#   - input will always be an odd integer
#   - output will be a display of a diamond shap made of asterisks in a grid
#   - if input is 1 then a single asterisk is displayed
# --------- Data Structure
# With 3:
#  *
# ***
#  *
# 
# With 9
#     *     
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***
#     *
#
# - The longest line will have the same number of asterisks as argument
# - starting with 1, each consecutive line leading up to the longest will have 2 more asterisks
# - starting at longes line, each consecutive line will have 2 fewer asterisks until last line has 1
# -The number of spaces on either side of the first line is equal to argument / 2 rounded down
# - Each consecutive line up to longest will have 1 less space on either side
# - vice versa from longes to last
# --------- Algorithm
# - determine the starting number of spaces
#   - integer / 2 rounding down
# - set number_of_symbols to 1
# - until number_of_symbols == integer
#   - print number_of_spaces + '*' * number_of_symbols
#   - add 2 to number_of_symbols
#   - subtract 1 from number_of_spaces
# - last iteration: print integer number of symbols
# - until number_of_symbols == 1
#   - print number_of_spaces + '*' * number_of_symbols
#   - subtract 2 from number_of_symbols
#   - add 1 to number_of_spaces
# --------- Code

# def diamond(int)
#   spaces = int / 2
#   symbols = 1
#   until symbols == int
#     puts (' ' * spaces) + ('*' * symbols)
#     symbols += 2
#     spaces -= 1
#   end
#   puts ('*' * symbols)
#   until symbols <= 0
#     puts (' ' * spaces) + ('*' * symbols)
#     symbols -= 2
#     spaces += 1
#   end
# end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

p diamond(9)