# Explain what the @@cats_count variable does and how it works. 
# What code would you need to write to test your theory?

class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age  = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

# `@@cats_count` is a class variable that initializes to 0 and is incremented by 1 every time a new Cat object is instantiated.
# We can test this in the following way:

puts Cat.cats_count
Cat.new('tabby')
puts Cat.cats_count

# This will output 0 before the new Cat object is instantiated and 1 afterward.
