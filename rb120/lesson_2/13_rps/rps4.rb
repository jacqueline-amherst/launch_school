class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']
  @@history = []
  @@move_number = 1

  def initialize(value)
    @value = value
    @@history << []
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'Spock'
  end

  def >(other_move)
    rock? && (other_move.scissors?    || other_move.lizard?) ||
      paper? && (other_move.rock?     || other_move.spock?)  ||
      scissors? && (other_move.paper? || other_move.lizard?) ||
      lizard? && (other_move.spock?   || other_move.paper?)  ||
      spock? && (other_move.rock?     || other_move.scissors?)
  end

  def to_s
    @value
  end

  def self.add_moves(player1, player2)
    @@history << ["Round #{@@move_number}: #{player1.name} played #{player1.move}, #{player2.name} played #{player2.move}"]
    @@move_number += 1
  end

  def self.history
    @@history.each { |move| puts move }
  end
end

class Player
  attr_accessor :move, :name, :score

  def initialize
    set_name
    @score = 0
  end
end

class Human < Player
  def set_name
    system 'clear'

    name = ''
    loop do
      puts "What's your name?"
      name = gets.chomp
      break unless name.empty?
      puts "Sorry, must enter a value."
    end
    self.name = name
  end

  def choose
    choice = nil
    loop do
      puts "Please choose rock, paper, scissors, lizard, or Spock:"
      choice = gets.chomp
      break if Move::VALUES.include? choice
      puts "Sorry, invalid choice"
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['Banana', 'Marble', 'Cortado', 'Cormorant'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

# RPS Orchestration Engine
class RPSGame
  attr_accessor :human, :computer, :max_score

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    system 'clear'
    puts "Welcome to Rock, Paper, Scissors, #{human.name}!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors! Goodbye!"
  end

  def set_max_score
    puts "How many points would you like to play up to?"
    @max_score = gets.to_i
  end

  def display_moves
    system 'clear'
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_score
    puts "#{human.name}'s score is #{human.score}"
    puts "#{computer.name}'s score is #{computer.score}"
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
      @human.score += 1
    elsif computer.move > human.move
      puts "#{computer.name} won!"
      @computer.score += 1
    else
      puts "It's a tie!"
    end
  end

  def someone_won?
    human.score == max_score || computer.score == max_score
  end

  def yes_no_question(text)
    loop do
      puts "#{text}"
      answer = gets.chomp
      return answer if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end
  end

  def display_history
    text = "Would you like to see the moves played so far? (y/n)"
    answer = yes_no_question(text)
    if answer == 'y'
      system 'clear'
      Move.history
    end
  end

  def play_again?
    text = "Would you like to play again, #{human.name}? (y/n)"
    answer = yes_no_question(text)
    return true if answer == 'y'
    false
  end

  def play
    display_welcome_message
    set_max_score
    loop do
      loop do
        human.choose
        computer.choose
        display_moves
        display_winner
        display_score
        Move.add_moves(human, computer)
        display_history
        break if someone_won?
      end
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play
