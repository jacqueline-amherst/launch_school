require 'pry'
require 'pry-byebug'

class Board
  attr_accessor :squares

  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # cols
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def compulsory_move(marker)
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      possible_squares = squares.reject { |square| square.marker == marker }
      return possible_squares.first if possible_squares.size == 1 && possible_squares.first.unmarked?
    end
    nil
  end

  def someone_won_round?
    !!round_winning_marker
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

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # rubocop:disable Metrics/AbcSize
  def draw
    puts "     |     |"
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |"
    puts "-----+-----+-----"
    puts "     |     |"
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |"
  end
  # rubocop:enable Metrics/AbcSize

  private

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.min == markers.max
  end
end

class Square
  INITIAL_MARKER = " "

  attr_accessor :marker

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def to_s
    @marker
  end

  def unmarked?
    marker == INITIAL_MARKER
  end

  def marked?
    marker != INITIAL_MARKER
  end
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  HUMAN_MARKER = "X"
  COMPUTER_MARKER = "O"
  FIRST_TO_MOVE = HUMAN_MARKER

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_marker = FIRST_TO_MOVE
    @human_score = 0
    @computer_score = 0
  end

  def play
    clear
    display_welcome_message
    get_max_score
    main_game
    display_goodbye_message
  end

  private
  attr_writer :human_score, :computer_score

  def main_game
    loop do
      loop do
        clear
        display_board
        player_move
        display_round_result
        break if someone_reached_max_score?
        reset
      end
    display_game_result
    break unless play_again?
    end
  end

  def player_move
    loop do
      current_player_moves
      break if board.someone_won_round? || board.full?
      clear_screen_and_display_board if human_turn?
    end
  end

  def display_welcome_message
    puts "Welcome to Tic Tac Toe!"
    puts ""
  end

  def display_goodbye_message
    puts "Thanks for playing Tic Tac Toe! Goodbye!"
  end

  def clear_screen_and_display_board
    clear
    display_board
  end

  def get_max_score
    max_score = nil
    loop do
      puts "How many points would you like to play up to?"
      max_score = gets.chomp
      break if max_score.to_i.to_s == max_score
    end
    @max_score = max_score.to_i
  end

  def someone_reached_max_score?
    @human_score == @max_score || @computer_score == @max_score
  end

  def human_turn?
    @current_marker == HUMAN_MARKER
  end

  def display_board
    puts "You're an #{human.marker}. Computer is an #{computer.marker}."
    display_score
    puts ""
    board.draw
    puts ""
  end

  def display_score
    puts "Your score: #{@human_score}. Computer score: #{@computer_score}."
    puts puts "The first to #{@max_score} wins."
  end

  def joinor(array)
    case array.size
    when 1 then "#{array.first}"
    when 2 then "#{array.first} or #{array.last}"
    else
      "#{array[0..-2].join(', ')}, or #{array.last}"
    end
  end

  def human_moves
    puts "Choose a square (#{joinor(board.unmarked_keys)}): "
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    if offensive_move
      offensive_move.marker = computer.marker
    elsif defensive_move
      defensive_move.marker = computer.marker
    elsif board.squares[5].unmarked?
      board.squares[5].marker = computer.marker
    else
      board.squares[board.unmarked_keys.sample].marker = computer.marker
    end
  end

  def offensive_move
    board.compulsory_move(COMPUTER_MARKER)
  end

  def defensive_move
    board.compulsory_move(HUMAN_MARKER)
  end


  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = COMPUTER_MARKER
    else
      computer_moves
      @current_marker = HUMAN_MARKER
    end
  end

  def game_winning_marker
    @human_moves == @max_score ? HUMAN_MARKER : COMPUTER_MARKER
  end

  def display_game_result
    case game_winning_marker
    when HUMAN_MARKER then puts "You won the game!"
    when COMPUTER_MARKER then puts "The computer won the game!"
    end
  end

  def enter_to_continue
    puts "Press 'Enter' to continue"
    gets.chomp
  end

  def display_round_result
    clear_screen_and_display_board

    case board.round_winning_marker
    when human.marker
      puts "You won this round!"
      enter_to_continue
      @human_score += 1
    when computer.marker
      puts "Computer won this round!"
      enter_to_continue
      @computer_score += 1
    else
      puts "It's a tie!"
    end
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      if %w(y n).include? answer
        reset
        break
      end
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def clear
    system "clear"
  end

  def reset
    board.reset
    @current_marker = FIRST_TO_MOVE
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play

# In this version I added functionality to make the computer play the best possible move.
# Computer move priority logic is as follows:
#   - game-winning move
#   - move to stop other player from winning
#   - square 5
#   - move at random
#
# This was very frustrating to implement. I ran into a great many logical errors.
# One of the most difficult hurdles was realizing it would be best to split the first two priorities into their own methods.
# At first I thought it would be most efficient to have a single method in the Board class that took care of both the first two priorities:
#   it would take the computer marker and human marker as arguments, then iterate over each of them successively, and return the first square for which 
#   the conditions were met (both other squares were taken by the same marker and the last one was unmarked).
# Unfortunately this was a headache becaus even with an explicit return it just continued to iterate and would always prefer blocking the other player over winning if both options were available.
# Eventually this worked out as I realized simpler was better and clearer. Clinging to my first idea added hours of frustration that could've been avoided if I were a little more flexible.
# Thank goodness for pry though! Without it I would've gone crazy.
