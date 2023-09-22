=begin

--- PROBLEM ---

- input: list of integers & another integer
- output: an integer

  - rules:
    - list of integers are the basis of multiples
    - single given integer is the number to which multiples are found (non-inclusive)
    - if no set is given, default to a set of 3 and 5
    - output is the sum of all multiples
    - multiples do not include any repeated numbers

--- EXAMPLES ---

(7, 13, 17).to(20)

multiples = [7, 13, 14, 17] == 51

.to(10)
  - automatically uses 3 and 5 because no set given
  - multiples = [3, 5, 6, 9] == 23

--- ALGORITHM ---

*** initialize(set) ***
  - save set of numbers as instance variable
  - if no set is given, set to (3, 5)

*** to() ***
  - initialize empty array to store multiples
  - for each number in set:
    - iterate over every number from given number up to but not including limit
      - if that number is divisible by given number, add to array
  - remove any repeated values
  - calculate and return sum of all values in array

*** self#to() ***
  - instantiate a new SumOfMultiples object with list 3 & 5
  - call #to(x) on that object

=end

require 'pry'
require 'pry-byebug'

class SumOfMultiples
  attr_reader :numbers

  def initialize(*numbers)
    @numbers = (numbers.size > 0) ? numbers : [3, 5] 
  end

  def to(limit)
    multiples = []

    numbers.each do |num|
      # binding.pry
      (num...limit).each do |candidate|
        multiples << candidate if candidate % num == 0
      end
    end

    multiples.uniq.sum
  end

  def self.to(limit)
    object = SumOfMultiples.new
    object.to(limit)
  end
end

# p SumOfMultiples.to(100)