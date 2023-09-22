=begin
--- PROBLEM ---

*** #initialize ***
- store argument as instance variable `detector`

*** #match ***

  - input: an array of strings `candidates`
  - output: a new array of strings

  - rules:
    - output includes any element of `candidates` that is an anagram of `detector`
    - an identical string is not an anagram
    - anagrams are case insensitive


--- EXAMPLES ---

--- DATA STRUCTURES ---

--- ALGORITHM ---

#match

  - select the elements of `candidates` that have the same characters as `detector` but are not the same string

=end

class Anagram
  def initialize(detector)
    @detector = detector.downcase
  end

  def match(candidates)
    candidates.select do |word|
      word.downcase != @detector &&
      get_chars(word) == get_chars(@detector)
    end
  end

  def get_chars(word)
    word.downcase.chars.sort
  end
end