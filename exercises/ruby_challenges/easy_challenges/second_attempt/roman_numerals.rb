=begin
  --- PROBLEM ---

  - Write a program that takes an integer and returns a roman numeral
  - Don't have to deal with numbers greater than 3000

  --- DATA STRUCTURES ---

  1 = I
  4 = IV
  5 = V
  9 = IX
  10 = X
  40 = XL
  50 = L
  90 = XC
  100 = C
  400 = CD
  500 = D
  900 = CM
  1000 = M

  911 = [9, 1, 1]

  1024 = [4, 2, 0, 1]

  4 * 10**0 = 4
    numerals[4] = 'IV'
  2 * 10**1 = 20
    numerals[20] = nil
    20.divmod(10**1) = [2, 0]
    numerals[10**1] = 'X'
      'X' * 2 = XX
  0 * 10**2 = 0
  1 * 10**3 = 1000
    numerals[1000] = 'M'

    => 'MXXIV'

  --- ALGORITHM ---

  - create hash NUMERALS that has above correspondences

  #initialize(integer)
    - save integer

  #to_roman
    - break into thousands, hundreds, tens, and ones
      - set `result` to blank string
      - set `power` to 0
      - convert integer into an array of its digits
      - until array is empty:
        - set `multiplier` as 10 to `power`
        - remove lowest digit, multiply by `multiplier`
          - send to `find_numeral`

    private

    #to_numeral
    - if result is included as a key in NUMERALS
      - return that numeral
    - otherwise, divmod by multiplier

    - add conversion (5 times `multiplier`) plus corresponding extras

=end

require 'pry'
require 'pry-byebug'

class RomanNumeral
  attr_reader :number

  NUMERALS = { 1 => 'I',   4 =>   'IV', 5 =>   'V', 9 =>   'IX',
               10 => 'X',  40 =>  'XL', 50 =>  'L', 90 =>  'XC',
               100 => 'C', 400 => 'CD', 500 => 'D', 900 => 'CM',
               1000 => 'M' }

  def initialize(number)
    @number = number
  end

  def to_roman
    power = 0
    digits = number.digits

    digits.each_with_object([]) do |digit, result|
      multiplier = 10**power
      digit *= multiplier
      result << find_numeral(digit, multiplier)
      power += 1
    end.reverse.join
  end

  private

  def find_numeral(digit, multiplier)
    number = digit / multiplier

    case number
    when 1, 4, 5, 9 then NUMERALS[number * multiplier]
    when 2, 3 then NUMERALS[multiplier] * number
    when 6, 7, 8
      NUMERALS[5 * multiplier] +
        (NUMERALS[multiplier] * (number - 5))
    end
  end
end
