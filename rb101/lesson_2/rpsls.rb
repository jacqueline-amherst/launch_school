require "pry"

WINNING_COMBOS = {
  rock: ["lizard", "scissors"],
  paper: ["rock", "Spock"],
  scissors: ["paper", "lizard"],
  spock: ["scissors", "rock"],
  lizard: ["Spock", "paper"]
}

ABBREVIATIONS = {
  'r' => 'rock',   'p' => 'paper', 's' => 'scissors',
  'l' => 'lizard', 'S' => 'Spock'
}

VALID_CHOICES = %w(rock paper scissors lizard Spock)

def prompt(msg)
  puts "=> #{msg}"
end

def win?(first, second)
  WINNING_COMBOS[first.downcase.to_sym].include?(second)
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "You won."
  elsif win?(computer, player)
    prompt "Computer won."
  else
    prompt "It's a tie."
  end
end

prompt "Welcome to Rock, Paper, Scissors, Lizard, Spock!"
prompt "The round will end when one player wins three times."
loop do
  player_score = 0
  computer_score = 0

  loop do
    choice = ''
    loop do
      prompt "Choose one: #{VALID_CHOICES.join(', ')} (r, p, s, l, S)"
      choice = gets.chomp

      if VALID_CHOICES.include?(choice)
        break
      elsif ABBREVIATIONS.keys.include?(choice)
        choice = ABBREVIATIONS[choice]
        break
      else
        prompt "That's not a valid choice."
      end
    end

    computer_choice = VALID_CHOICES.sample

    prompt "You chose: #{choice}; Computer chose: #{computer_choice}"

    display_results(choice, computer_choice)

    if win?(choice, computer_choice)
      player_score += 1
    elsif win?(computer_choice, choice)
      computer_score += 1
    end

    prompt "Player has won #{player_score} times."
    prompt "Computer has won #{computer_score} times."

    if player_score == 3
      prompt "Congratulations! You've won the round!"
      break
    elsif computer_score == 3
      prompt "Oh no! Computer has won the round!"
      break
    end
  end

  prompt "Do you want to play again?"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for playing. Goodbye."
