=begin
--- PROBLEM ---

- Write a program to determine the type of a triangle

- input: three integers representing side lengths
- output: "scalene", "isosceles", or "equilateral", raises `ArgumentError` if not a valid triangle

  - rules:
    - side lengths can be integers or floats
    - In order to be a valid triangle:
      - all sides must be greater than 0
      - the sum of the lengths of any two sides must be greater than the length of the third side
        - i.e. [7, 2, 2] is not a valid triangle because 2 + 2 !> 7
    - a triangle is 'equilateral' if all sides are the same length
      - i.e. [2, 2, 2]
    - a triangle is 'isosceles' if exactly two sides are the same length
      - i.e. [3, 2, 2] ?
    - a triangle is 'scalene' if all sides are different lengths
      - i.e. [3, 2, 4]

--- SCRATCH ---

--- ALGORITHM ---

- given `side1`, `side2`, `side3`

- raise ArgumentError if any side is 0
- raise ArgumentError if the sum of any two sides is not greater than the size of the third

=end

class Triangle
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    valid?
  end

  def kind
    if equilateral?
      "equilateral"
    elsif scalene?
      "scalene"
    elsif isosceles?
      "isosceles"
    end
  end

  def equilateral?
    @side1 == @side2 &&
      @side2 == @side3
  end

  def scalene?
    @side1 != @side2 &&
      @side1 != @side3 &&
      @side2 != @side3
  end

  def isosceles?
    @side1 == @side2 ||
      @side1 == @side3 ||
      @side2 == @side3
  end

  def valid?
    raise ArgumentError if (@side1 + @side2) <= @side3 ||
                           (@side1 + @side3) <= @side2 ||
                           (@side2 + @side3) <= @side1 ||
                           [@side1, @side2, @side3].any?(0)
  end
end
