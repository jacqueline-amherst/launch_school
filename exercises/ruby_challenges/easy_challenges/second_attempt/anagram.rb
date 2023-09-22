=begin

#initialize(string)
  - save string

#match(array)
  - anagrams are case-insensitive
  - identical word is not an anagram
  - return array of matches
  - return empty array if no matches

  - set empty array to contain results
  - iterate over each string in array:
    - if string and word have same (lowercase) letters
        AND they are not the same word,
      - add string to array
  - return the result array

=end

require 'pry'
require 'pry-byebug'

class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(strings)
    # binding.pry
    strings.each_with_object([]) do |candidate, result|
      if !same_word?(candidate, word) && same_chars?(candidate, word)
        result << candidate
      end
    end
  end

  private

  def same_word?(str1, str2)
    str1.downcase == str2.downcase
  end

  def same_chars?(str1, str2)
    str1, str2 = [str1, str2].map { |str| str.downcase.chars.sort }
    str1 == str2
  end
end
