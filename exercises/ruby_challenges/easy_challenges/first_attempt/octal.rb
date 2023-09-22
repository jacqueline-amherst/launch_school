=begin

--- PROBLEM ---

Write a program that takes a string representation of an octal number and returns the decimal conversion

- input: string
- output: integer

  - rules:
    - if the input is not a valid decimal number, return 0
    - convert the decimal string to an octal integer

--- EXAMPLES ---

2047 == 1063

2 * 8**(3)

--- ALGORITHM ---
Class: Octal

#initialize

- stores the octal string

#to_decimal

- return 0 if input is not a valid decimal number
- convert octal string to decimal number
  - set `result` to 0
  - clone decimal string
  - enter a loop
    - remove first char of decimal destructively, set as `current_number`
    - set power_of to length of decimal string
    - add result of multiplying current number by 8 to the power of `power_of`
    - break if decimal size is 0
  - return `result`

#valid?

- check that string is not empty and every character of string is 0-7

=end

class Octal
  attr_reader :octal

  def initialize(octal)
    @octal = octal
  end

  def to_decimal
    return 0 unless valid_octal?
    octal_arr = octal.chars.map(&:to_i)
    result = 0
    loop do
      current_number = octal_arr.shift
      power = octal_arr.size
      result += current_number * (8 ** power)
      break if octal_arr.empty?
    end
    result
  end

  private

  def valid_octal?
    !octal.empty? &&
    octal.chars.all? { |char| char.match(/[0-7]/)}
  end
end
