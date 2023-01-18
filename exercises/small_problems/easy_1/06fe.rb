# Modify solution to last problem to display the triangle with the right angle at any corner of the grid

def triangle(side_length, corner_num)
  if corner_num <= 2
    counter = side_length

    loop do
      if corner_num == 1
        puts ('*' * counter) + (' ' * (side_length - counter))
      elsif corner_num == 2
        puts (' ' * (side_length - counter)) + ('*' * counter)
      end

      counter -= 1
      break if counter == 0
    end

  elsif corner_num > 2
    counter = 1

    loop do
      if corner_num == 3
        puts ('*' * counter) + (' ' * (side_length - counter))
      elsif corner_num == 4
        puts (' ' * (side_length - counter)) + ('*' * counter)
      end

      break if counter == side_length
      counter += 1
    end
  end
end

triangle(5, 1)
triangle(5, 2)
triangle(5, 4)
triangle(5, 3)