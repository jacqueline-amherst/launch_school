require 'pry'

class Move
  attr_accessor :type, :value

  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'Spock']

  def initialize(value)
    @value = value
    set_type
  end

  def set_type
    case @value
    when 'rock' then self.type = Rock.new
    when 'paper' then self.type = Paper.new
    when 'scissors' then self.type = Scissors.new
    when 'lizard' then self.type = Lizard.new
    when 'Spock' then self.type = Spock.new
    end
  end

  def win_against?(other_move)
    self.type.win_against?(other_move)
  end

  def to_s
    @value
  end
end

class Rock
  def win_against?(other_move)
    ['scissors', 'lizard'].include?(other_move.value)
  end
end

class Paper
  def win_against?(other_move)
    ['rock', 'Spock'].include?(other_move.value)
  end
end

class Scissors
  def win_against?(other_move)
    ['paper', 'lizard'].include?(other_move.value)
  end
end

class Lizard
  def win_against?(other_move)
    ['Spock', 'paper'].include?(other_move.value)
  end
end

class Spock
  def win_against?(other_move)
    ['rock', 'scissors'].include?(other_move.value)
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
    puts "Welcome to Rock, Paper, Scissors!"
  end

  def display_goodbye_message
    puts "Thanks for playing Rock, Paper, Scissors! Goodbye!"
  end

  def set_max_score
    puts "How many points would you like to play up to?"
    @max_score = gets.to_i
  end

  def display_moves
    puts "#{human.name} chose #{human.move}"
    puts "#{computer.name} chose #{computer.move}"
  end

  def display_score
    puts "#{human.name}'s score is #{human.score}"
    puts "#{computer.name}'s score is #{computer.score}"
  end

  def display_winner
    if human.move.win_against?(computer.move)
      puts "#{human.name} won!"
      @human.score += 1
    elsif computer.move.win_against?(human.move)
      puts "#{computer.name} won!"
      @computer.score += 1
    else
      puts "It's a tie!"
    end
  end

  def someone_won?
    human.score == max_score || computer.score == max_score
  end

  def play_again?
    answer = nil
    loop do
      puts "Would you like to play again, #{human.name}? (y/n)"
      answer = gets.chomp
      break if ['y', 'n'].include? answer.downcase
      puts "Sorry, must be y or n."
    end

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
        break if someone_won?
      end
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play


# Adding a Class for each move:
#   This was frustrating and difficult. I feel like I leared a lot though.
# The primary benefit of this approach is in re-writing the winning logic.
# Each move class contains the logic for which other classes it wins against, which is nice in a way.
# My solution uses duck typing (I think?). I ran into trouble actually subclassing the new move classes from Move itself,
# so they're all just kind of independent and floating. They all have a `win_agains?` method (including the Move class).
# Unfortunately, this was a lot more difficult to implement and I don't know that it helped all that much.
# As far as I can tell the benefits do not outweigh the cons.
 