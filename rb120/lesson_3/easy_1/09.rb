# If we have the class below, what would you need to call to create a new instance of this class.

class Bag
  def initialize(color= 'brown', material= 'burlap')
    @color = color
    @material = material
  end
end

# To create a new instance of `Bag` you would have to call #new on Bag, including two arguments, one each for the parameters `color` and `material`.
# For instance:

p Bag.new('blue', 'denim')