=begin

--- PROBLEM ---


--- SCRATCH ---

  *** Variations ***

  - Standard Verse:

    "2 bottles of beer on the wall, 2 bottles of beer.\n" \
    "Take one down and pass it around, 1 bottle of beer on the wall.\n"

  - 1 Bottle Verse:

    "1 bottle of beer on the wall, 1 bottle of beer.\n" \
    "Take it down and pass it around, no more bottles of beer on the wall.\n"

  - 0 Bottle Verse:

    "No more bottles of beer on the wall, no more bottles of beer.\n" \
    "Go to the store and buy some more, 99 bottles of beer on the wall.\n"

  - In all verses the first line is the same, although instead of 0 `no more` is used
  - the second line is where there is a difference

--- ALGORITHM ---

  *** verse(current_bottle, ending_bottle)  ***

    - first argument is starting verse, second is ending verse
    - if only one argument is given, return only that verse

    - if two arguments are given, return all verses from starting verse to ending verse
    
    - set bottles to:
      - if current_bottle > 1, "x bottles"
      - if == 1, "1 bottle"
      - if == 0 "no more bottles"
    
    - set next_bottle to:
      - current_bottle -1, using same as above
    
    - output first line using above i.e.
      "3 bottles of beer on the wall, 3 bottles of beer.\n"
    
    - if next_bottle >= 0
      "Take it down and pass it around, #{next_bottle} of beer on the wall"
    - if next_bottle < 0
      "Go to the store and buy some more"


  *** lyrics ***

    - call verse(99, 0)

=end

class BeerSong
  def self.verses(starting_bottle, ending_bottle = nil)
    number_of_bottles = starting_bottle
    result = ""

    loop do
      result += verse(number_of_bottles)

      number_of_bottles -= 1
      break if number_of_bottles < ending_bottle

      result += "\n"
    end

    result
  end

  def self.verse(number_of_bottles)
    result = ""

    current_bottle = self.bottle_string(number_of_bottles)
    next_bottle = self.bottle_string(number_of_bottles - 1)

    result += "#{current_bottle.capitalize} of beer on the wall, #{current_bottle} of beer.\n"

    result +=
      if (number_of_bottles - 1) == 0
        "Take it down and pass it around, #{next_bottle} of beer on the wall.\n"
      elsif (number_of_bottles - 1) >= 0
        "Take one down and pass it around, #{next_bottle} of beer on the wall.\n"
      else
        "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
      end

    result
  end

  def self.lyrics
    self.verses(99, 0)
  end

  private

  def self.bottle_string(number_of_bottles)
    case number_of_bottles
    when 1 then "1 bottle"
    when 0 then "no more bottles"
    else "#{number_of_bottles} bottles"
    end
  end
end
