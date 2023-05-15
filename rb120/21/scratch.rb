# 21
# 21 is a game with two participants: a player and a dealer.
# The goal is to have a hand worth as close to 21 as possible without going over.
# Play:
#   - Each participant is dealt two cards from a 52-card deck
#   - The player goes first and can see their own hand as well as the dealer's hand
#     - The player can choose to hit or stay
#     - If they choose to hit, they are dealt another card
#       - If after hitting, their hand is worth more than 21 they bust and dealer wins
#     - If they choose to stay, moves on to dealer's turn
#   - Dealer must hit if their hand is worth less than 17, stays otherwise
#   - If dealer busts, player wins
#   - If nobody busts, hand values are compared and whoever has the higher hand value wins.

# nouns: game, participants, player, dealer, hand, deck, value, card
# verbs: deal, hit, stay, bust

# Participant
# - hit
# - stay
# Hand
# - busted?
# - total
# Deck
# - deal
# Card
# Game
# - start

require 'pry'
require 'pry-byebug'

module Clearable
  def clear
    system "clear"
  end

  def enter_to_continue
    puts "Press 'Enter' to continue"
    gets.chomp
    clear
  end
end

class Participant
  include Clearable

  attr_accessor :hand

  def initialize
    @hand = []
  end

  def joinand(array)
    case array.size
    when 1 then "#{array.first}"
    when 2 then "#{array.first} and #{array.last}"
    else
      "#{array[0..-2].join(', ')}, and #{array.last}"
    end
  end

  def hit(deck)
    clear
    deck.deal(1, self)
    puts "You were dealt #{hand.last}."
    puts "Your hand is now: #{self.show_hand}."
  end

  def stay
    puts "Stayed"
  end

  def busted?

  end

  def show_hand
    joinand(hand)
  end
end

class Player < Participant; end

class Dealer < Participant
  def show_hand
    "#{hand[0]} and an unknown card."
  end
end

class Deck
  attr_reader :cards

  SUITS = %w(♠ ♦ ♣ ♥)
  VALUES = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
  FULL_DECK = VALUES.product(SUITS).map { |pair| pair.join }

  def initialize
    @cards = FULL_DECK.shuffle
  end

  def deal(number_of_cards, *players)
    players.each do |player|
      number_of_cards.times { player.hand << @cards.pop }
    end
  end

  def total(hand)
    total = 0
    hand.each do |card|
      if card =~ /(10|J|Q|K)/
        total += 10
      elsif card.include?('A')
        total += 11
      else
        total += /[2-9]/.match(card).to_s.to_i
      end
    end

    total
  end
end

class Game
  include Clearable

  attr_reader :deck, :player, :dealer

  def initialize
    @deck = Deck.new
    @player = Player.new
    @dealer = Dealer.new
  end

  def play
    clear
    initial_deal
    show_initial_cards
    player_turn
    # dealer_turn
    # show_result
  end

  private

  def initial_deal
    @deck.deal(2, player, dealer)
    puts "Each player is dealt two cards..."
    enter_to_continue
  end

  def show_initial_cards
    puts "Dealer has: #{dealer.show_hand}"
    puts "You have: #{player.show_hand}"
  end

  def player_turn
    loop do
      break if player.busted?
      puts "#{deck.total(player.hand)}"

      answer = nil
      loop do
        puts "Would you like to hit or stay? (h/s)"
        answer = gets.downcase.chomp
        break if %w(h s).include?(answer)
        invalid_input
      end
      
      if answer == 'h'
        player.hit(deck)
      elsif answer == 's'
        player.stay
        break
      end
    end
  end

  def dealer_turn

  end

  def show_result

  end

  def invalid_input
    puts "I'm sorry, that's not a valid option. Please try again."
  end
end

Game.new.play