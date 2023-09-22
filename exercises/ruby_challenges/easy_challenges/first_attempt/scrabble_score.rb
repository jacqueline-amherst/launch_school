=begin
--- PROBLEM ---

- Write a program that, given a string, returns that string's scrabble score

- input: string
- output: integer

  - rules:
    - `nil` scores 0
    - empty string score 0
    - case-insensitive

--- DATA STRUCTURES ---

- Hash with score for key, letters with that score for values

--- ALGORITHM ---

- Create hash with scores as keys, letters as values

#initialize

  - store `word`

#score

  - set `total` to 0
  - for each character in `word`:
    - find its value
      - store the value (array) in the hash that contains `word`
      - find the key associated with that value
    - add value to total
  - return `total`

=end

require 'pry'
require 'pry-byebug'

class Scrabble
  attr_reader :word

  SCORES = {
    1 => %w(A E I O U L N R S T),
    2 => %w(D G),
    3 => %w(B C M P),
    4 => %w(F H V W Y),
    5 => %w(K),
    8 => %w(J X),
    10 => %w(Q Z)
  }

  def initialize(word)
    @word = word
  end

  def score
    total = 0
    return total if word.nil? || word.empty?
    word.chars.each do |char|
      # binding.pry
      if char.match(/[a-z]/i)
        value = SCORES.values.select{ |value| value.include?(char.upcase) }.flatten
        total += SCORES.key(value)
      end
    end
    total
  end

  def self.score(word)
    Scrabble.new(word).score
  end
end

# p Scrabble.new('f').score