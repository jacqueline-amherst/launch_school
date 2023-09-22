=begin

--- PROBLEM ---

- Write a program that takes a string and returns its scrabble score

  - input: string
  - output: integer

  -rules:
    - if string is empty, whitespace, or nil,
      -it is not valid and must evaluate as 0

--- EXAMPLES ---

--- SCORES ---

  - AEIOULNRST = 1
  - DG = 2
  - BCMP = 3
  - FHVWY = 4
  - K = 5
  - JX = 8
  - QZ = 10

--- DATA STRUCTURES ---

  - Possible structures:
    - letters as part of an array i.e. ['D', 'G']
    - letters as string i.e. 'DG'

    - hash, letters as keys, integer as value { 'DG' => 1 }
    - other way round { 1 => 'DG' }

--- ALGORITHM ---

  Class = Scrabble

    - create data structure for SCORES

    ::score(word)
      - return score for word

    #initialize(word)
      - save the result of passing word to `to_word`

    #score
      - set score to 0
      - for each character of word:
        - find the corresponding key for SCORES
        - add value associated with that key to score
      - return score

    private

    #to_word(string)
      - convert word to string
      - remove all non-alphabetic characters from word
      - make it uppercase
=end

class Scrabble
  attr_reader :word

  SCORES = { 'AEIOULNRST' => 1, 'DG' => 2, 'BCMP' => 3, 'FHVWY' => 4,
             'K' => 5,          'JX' => 8, 'QZ' => 10 }

  def initialize(word)
    @word = to_word(word)
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def score
    return 0 if word.empty?

    word.chars.map do |letter|
      key = SCORES.keys.find { |k| k.include?(letter) }
      SCORES[key]
    end.sum
  end

  private

  def to_word(string)
    string.to_s.upcase.delete("^A-Z")
  end
end
