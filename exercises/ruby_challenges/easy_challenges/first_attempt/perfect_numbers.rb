=begin

--- PROBLEM ---

Write a program that determines whether a number is perfect, abundant, or deficient

::classify

  -input: integer
  - output: "perfect", "deficient", or "abundant"

  - rules:
    - perfect numbers are equal to their aliquot sum
    - deficient numbers are greater than aliquot sum
    - abundant number are less than aliquot sum

#aliquot_sum

  - input: integer
  - output: integer

  - rules:
    - output is the sum of all divisors of input

--- EXAMPLES ---

--- DATA STRUCTURES ---

--- ALGORITHM ---

::classify
  - set aliquot by calling aliquot_sum
  - compare number and aliquot number
    - if aliquot == num then return "perfect"
    - if aliquot > num then return "abundant"
    - if aliquot < num then return "deficient"

#aliquot_sum
  - find all the divisors of given number
    - set `divisors` to emtpy array
    - iterate from 1 up to number
    - if number is equally divisible by divisor:
      - add divisor to divisors
  - return the sum of divisors

=end

class PerfectNumber
  def self.classify(number)
    raise StandardError if number <= 0

    aliquot = aliquot_sum(number)
    case aliquot <=> number
    when 0 then "perfect"
    when -1 then "deficient"
    when 1 then "abundant"
    end
  end

  def self.aliquot_sum(number)
    (1...number).select{ |divisor| number % divisor == 0 }.reduce(:+)
  end
end

# p PerfectNumber.classify(15)
