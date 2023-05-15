class GuessingGame
  def play
    set_number_and_remaining_guesses
    gameplay_loop
    display_result
  end

  private

  attr_accessor :number, :remaining_guesses, :current_guess

  def set_number_and_remaining_guesses
    self.number = rand(1..100)
    self.remaining_guesses = 7
  end

  def gameplay_loop
    loop do
      break if no_more_guesses?
      display_remaining_guesses
      get_guess
      break if correct_guess?
      display_hint
      self.remaining_guesses -= 1
    end
  end

  def display_remaining_guesses
    puts "You have #{remaining_guesses} guesses remaining."
  end

  def display_result
    if correct_guess?
      puts "You won!"
    elsif no_more_guesses?
      puts "You have no more guesses. You lost!"
    end
  end

  def display_hint
    if current_guess > number
      puts "Your guess is too high."
      puts ""
    elsif current_guess < number
      puts "Your guess is too low"
      puts ""
    elsif current_guess == number
      puts "That's the number!"
      puts ""
    end
  end

  def get_guess
    answer = nil
    loop do
      p "Enter a number between 1 and 100:"
      answer = gets.chomp
      break if (1..100).include?(answer.to_i)
      p "Invalid guess."
    end

    self.current_guess = answer.to_i
  end

  def correct_guess?
    current_guess == number
  end

  def no_more_guesses?
    remaining_guesses == 0
  end
end

game = GuessingGame.new
p game.play
