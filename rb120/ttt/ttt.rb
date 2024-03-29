class Board
  WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] + # rows
                  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] + # columns
                  [[1, 5, 9], [3, 5, 7]]              # diagonals

  def initialize
    @squares = {}
    reset
  end

  # rubocop: disable Metrics/AbcSize
  # rubocop: disable Metrics/MethodLength
  def draw
    puts "     |     |  "
    puts "  #{@squares[1]}  |  #{@squares[2]}  |  #{@squares[3]}"
    puts "     |     |  "
    puts "-----+-----+-----"
    puts "     |     |  "
    puts "  #{@squares[4]}  |  #{@squares[5]}  |  #{@squares[6]}"
    puts "     |     |  "
    puts "-----+-----+-----"
    puts "     |     |  "
    puts "  #{@squares[7]}  |  #{@squares[8]}  |  #{@squares[9]}"
    puts "     |     |  "
  end
  # rubocop: enable Metrics/AbcSize
  # rubocop: enable Metrics/MethodLength

  def []=(key, marker)
    @squares[key].marker = marker
  end

  def unmarked_keys
    @squares.keys.select { |key| @squares[key].unmarked? }
  end

  def full?
    unmarked_keys.empty?
  end

  def count_marker(squares, marker)
    squares.map(&:marker).count(marker)
  end

  def reset
    (1..9).each { |key| @squares[key] = Square.new }
  end

  # returns winning marker or nil
  def winning_marker(marker1, marker2)
    WINNING_LINES.each do |line|
      [marker1, marker2].each do |marker|
        return marker if count_marker(@squares.values_at(*line), marker) == 3
      end
    end
    nil
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
end

class Player
  attr_reader :marker

  def initialize(marker)
    @marker = marker
  end
end

class TTTGame
  private

  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'

  attr_reader :board, :human, :computer

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_player = @human
  end

  def play_round
    loop do
      current_player_moves
      break if someone_won? || board.full?
      clear_screen_and_display_board
    end
  end

  def current_player_moves
    case @current_player
    when @human
      human_moves
      @current_player = @computer
    when @computer
      computer_moves
      @current_player = @human
    end
  end

  def human_moves
    puts "Choose a square: (#{board.unmarked_keys.join(', ')})"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that's not a valid choice."
    end

    board[square] = human.marker
  end

  def computer_moves
    board[board.unmarked_keys.sample] = computer.marker
  end

  def display_result
    clear_screen_and_display_board

    case board.winning_marker(HUMAN_MARKER, COMPUTER_MARKER)
    when human.marker then puts "You won!"
    when computer.marker then puts "Computer won!"
    else puts "It's a tie!"
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

  def display_board
    puts "You're a #{HUMAN_MARKER}. Computer is a #{COMPUTER_MARKER}"
    puts ""
    board.draw
    puts ""
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again? (y/n)"
      answer = gets.chomp.downcase
      break if %w(y n).include? answer
      puts "Sorry, must be y or n"
    end

    answer == 'y'
  end

  def someone_won?
    !!board.winning_marker(HUMAN_MARKER, COMPUTER_MARKER)
  end

  def clear
    system 'clear'
  end

  def reset
    board.reset
    clear
  end

  def display_play_again_method
    puts "Let's play again!"
    puts ""
  end

  def main_game
    loop do
      display_board
      play_round
      display_result
      break unless play_again?
      reset
      display_play_again_method
    end
  end

  public

  def play
    clear
    display_welcome_message
    main_game
    display_goodbye_message
  end
end

game = TTTGame.new
game.play
