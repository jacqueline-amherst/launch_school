# Complete the Program - Cats!
# Update the code to see the following output.

class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, color)
    @color = color
    super(name, age)
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@color} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# Expected Output:
# My cat Pudding is 7 years old and has black and white fur.
# My cat Butterscotch is 10 years old and has tan and white fur.

# FURTHER EXPLORATION:
#   Unless all other Pet Objects and Objects of subclasses of Pet would need a `colors` variable, it is safer to instead add it to the Cat class.
# Depending on the other classes used in the program it might make more sense to extract `colors` to either the superclass or a module.