WINNING_LINES = [[1,3,7], [2,5,8]]

def compulsory_move(computer_marker, human_marker)
  WINNING_LINES.each do |line|
    squares = @squares.values_at(*line)
    [computer_marker, human_marker].each do |marker|
      if squares.count(marker) == 2
        return squares.select { |square| square.unmarked? }[0]
      end
    end
  end
  nil
end

def round_winning_marker
  WINNING_LINES.each do |line|
    squares = @squares.values_at(*line)
    if three_identical_markers?(squares)
      return squares.first.marker
    end
  end
  nil
end