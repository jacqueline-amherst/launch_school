# When objects are created they are a separate realization of a particular class.

# Given the class below, how do we create two different instances of this class with separate names and ages?

class AngryCat
  def initialize(age, name)
    @age  = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

# Objects of a class can be instantiated with the #new method.
# In this case, both `age` and `name` are initialized upon instantiation by passing in arguments, so we can do this:

petunia = AngryCat.new(2, 'Petunia')
anya = AngryCat.new(10, "Anya")

petunia.age
petunia.name

anya.age
anya.name