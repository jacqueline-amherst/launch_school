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
  attr_reader :marker, :name, :human_marker, :computer_marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

class TTTGame
  attr_reader :board, :human, :computer, :first_to_move

  def initialize
    @board = Board.new
    @human_score = 0
    @computer_score = 0
  end

  def play
    clear
    display_welcome_message
    play_setup
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

  def play_setup
    set_computer_name
    get_name
    get_marker_choice
    initialize_players
    enter_to_continue
    get_max_score
    get_play_order
    enter_to_continue
  end

  def set_computer_name
    @computer_name = %w(Argonaut Potato-Pancake Squish Fumble Beaverbread CormacMcCarthy).sample
    puts "Hello! My name is #{@computer_name}"
  end

  def get_name
    puts "What is your name?"
    @human_name = gets.chomp
    puts "Hello, #{@human_name}!"
  end

  def get_marker_choice
    answer = nil
    loop do
      puts "What marker would you prefer? (X/O)"
      answer = gets.upcase.chomp
      break if %w(X O).include?(answer)
      puts "Sorry, that's not a valid answer. Please try again."
    end

    puts "Great! You'll play as #{answer}."

    case answer
    when 'X'
      @human_marker = 'X'
      @computer_marker = 'O'
    when 'O'
      @human_marker = 'O'
      @computer_marker = 'X'
    end
  end

  def initialize_players
    @human = Player.new(@human_name, @human_marker)
    @computer = Player.new(@computer_name, @computer_marker)
  end
  
  def get_play_order
    answer = nil
    loop do
      puts "One last question! Who would you like to go first?"
      puts "#{human.name}, #{computer.name}, or random (1/2/3)"
      answer = gets.chomp
      break if %w(1 2 3).include?(answer)
      puts "Sorry, that's not a valid choice! Please try again."
    end

    @first_to_move = case answer
                     when '1' then human.marker
                     when '2' then computer.marker
                     when '3' then [human.marker, computer.marker].sample
                     end
    @current_marker = @first_to_move
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
    @current_marker == @human_marker
  end

  def display_board
    puts "#{human.name} is an #{human.marker}. #{computer.name} is an #{computer.marker}."
    display_score
    puts ""
    board.draw
    puts ""
  end

  def display_score
    puts "#{human.name}'s score: #{@human_score}. #{computer.name}'s score: #{@computer_score}."
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
    board.compulsory_move(@computer_marker)
  end

  def defensive_move
    board.compulsory_move(@human_marker)
  end


  def current_player_moves
    if human_turn?
      human_moves
      @current_marker = @computer_marker
    else
      computer_moves
      @current_marker = @human_marker
    end
  end

  def game_winning_marker
    @human_moves == @max_score ? @human_marker : @computer_marker
  end

  def display_game_result
    case game_winning_marker
    when @human_marker then puts "You won the game!"
    when @computer_marker then puts "The computer won the game!"
    end
  end

  def enter_to_continue
    puts "Press 'Enter' to continue"
    gets.chomp
    clear
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
    @current_marker = @first_to_move
    clear
  end

  def display_play_again_message
    puts "Let's play again!"
    puts ""
  end
end

game = TTTGame.new
game.play