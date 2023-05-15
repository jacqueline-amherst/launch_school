require 'pry'
require 'pry-byebug'

class Card
  include Comparable
  attr_reader :rank, :suit

  VALUES = { 'Jack' => 11, 'Queen' => 12, 'King' => 13, 'Ace' => 14 }

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def to_s
    "#{rank} of #{suit}"
  end

  def value
    VALUES.fetch(rank, rank)
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end

class Deck
  attr_accessor :cards

  RANKS = ((2..10).to_a + %w(Jack Queen King Ace)).freeze
  SUITS = %w(Hearts Clubs Diamonds Spades).freeze

  def initialize
    @cards = []
    reset
  end

  def reset
    SUITS.each do |suit|
      RANKS.each { |rank| cards.push(Card.new(rank, suit)) }
    end

    cards.shuffle!
  end

  def draw
    reset if cards.empty?
    cards.pop
  end
end

class PokerHand
  attr_reader :hand

  def initialize(deck)
    @deck = deck
    @hand = []
    5.times { @hand << deck.draw}
  end

  def print
    puts "---- Your Hand ----"
    hand.each { |card| puts card }
  end

  def evaluate
    case
    when royal_flush?     then 'Royal flush'
    when straight_flush?  then 'Straight flush'
    when four_of_a_kind?  then 'Four of a kind'
    when full_house?      then 'Full house'
    when flush?           then 'Flush'
    when straight?        then 'Straight'
    when three_of_a_kind? then 'Three of a kind'
    when two_pair?        then 'Two pair'
    when pair?            then 'Pair'
    else                       'High card'
    end
  end

  private

  STRAIGHTS = [[2, 3, 4, 5, 6],             [3, 4, 5, 6, 7],                 [4, 5, 6, 7, 8]] +
              [[5, 6, 7, 8, 9],             [10, 6, 7, 8, 9],                [10, 7, 8, 9, 'Jack']] +
              [[10, 8, 9, 'Jack', 'Queen'], [10, 9, 'Jack', 'King', 'Queen']]

  def royal_flush?
    only_royals? && flush?
  end

  def straight_flush?
    straight? && flush?
  end

  def four_of_a_kind?
    ranks.any? { |rank| ranks.count(rank) == 4 }
  end

  def full_house?
    three_of_a_kind? && pair?
  end

  def flush?
    suits.size == 1
  end

  def straight?
    STRAIGHTS.include?(ranks.sort_by { |rank| rank.to_s }) || only_royals?
  end

  def three_of_a_kind?
    ranks.any? { |rank| ranks.count(rank) == 3 }
  end

  def two_pair?
    pairs = ranks.select { |rank| ranks.count(rank) == 2 }
    pairs.size == 4
  end

  def pair?
    ranks.any? { |rank| ranks.count(rank) == 2 }
  end

  def only_royals?
    royals = [10, 'Ace', 'Jack', 'King', 'Queen']
    ranks.sort_by { |card| card.to_s } == royals
  end

  def ranks
    hand.map { |card| card.rank }
  end

  def suits
    hand.map { |card| card.suit }.uniq
  end
end

# --------------- TESTS -----------------

hand = PokerHand.new(Deck.new)
hand.print
puts hand.evaluate

# Danger danger danger: monkey
# patching for testing purposes.
class Array
  alias_method :draw, :pop
end

# Test that we can identify each PokerHand type.
hand = PokerHand.new([
  Card.new(10,      'Hearts'),
  Card.new('Ace',   'Hearts'),
  Card.new('Queen', 'Hearts'),
  Card.new('King',  'Hearts'),
  Card.new('Jack',  'Hearts')
])
puts hand.evaluate == 'Royal flush'

hand = PokerHand.new([
  Card.new(8,       'Clubs'),
  Card.new(9,       'Clubs'),
  Card.new('Queen', 'Clubs'),
  Card.new(10,      'Clubs'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight flush'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Four of a kind'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Full house'

hand = PokerHand.new([
  Card.new(10, 'Hearts'),
  Card.new('Ace', 'Hearts'),
  Card.new(2, 'Hearts'),
  Card.new('King', 'Hearts'),
  Card.new(3, 'Hearts')
])
puts hand.evaluate == 'Flush'

hand = PokerHand.new([
  Card.new(8,      'Clubs'),
  Card.new(9,      'Diamonds'),
  Card.new(10,     'Clubs'),
  Card.new(7,      'Hearts'),
  Card.new('Jack', 'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new('Queen', 'Clubs'),
  Card.new('King',  'Diamonds'),
  Card.new(10,      'Clubs'),
  Card.new('Ace',   'Hearts'),
  Card.new('Jack',  'Clubs')
])
puts hand.evaluate == 'Straight'

hand = PokerHand.new([
  Card.new(3, 'Hearts'),
  Card.new(3, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(3, 'Spades'),
  Card.new(6, 'Diamonds')
])
puts hand.evaluate == 'Three of a kind'

hand = PokerHand.new([
  Card.new(9, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(8, 'Spades'),
  Card.new(5, 'Hearts')
])
puts hand.evaluate == 'Two pair'

hand = PokerHand.new([
  Card.new(2, 'Hearts'),
  Card.new(9, 'Clubs'),
  Card.new(5, 'Diamonds'),
  Card.new(9, 'Spades'),
  Card.new(3, 'Diamonds')
])
puts hand.evaluate == 'Pair'

hand = PokerHand.new([
  Card.new(2,      'Hearts'),
  Card.new('King', 'Clubs'),
  Card.new(5,      'Diamonds'),
  Card.new(9,      'Spades'),
  Card.new(3,      'Diamonds')
])
puts hand.evaluate == 'High card'

# How to determine if a given selection of cards is a straight (in a numerical seuqence)
#
#
# ------ Data Structures ---------
#
# All possible straights:
#
# [2, 3, 4, 5, 6]
# [3, 4, 5, 6, 7]
# [4, 5, 6, 7, 8]
# [5, 6, 7, 8, 9]
# [10, 6, 7, 8, 9] -- The 10 is moved to the first place because if we sort them as strings, that's where it ends up
# [10, 7, 8, 9, 'Jack']
# [10, 8, 9, 'Jack', 'Queen']
# [10, 9, 'Jack, 'King', 'Queen']
# [10, 'Ace', 'Jack', 'King' 'Queen']