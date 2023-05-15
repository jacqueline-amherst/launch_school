class Pet
  def run
    'running!'
  end

  def jump
    'jumping!'
  end
end

class Cat < Pet
  def speak
    'meow!'
  end
end

class Dog < Pet
  def swim
    'swimming!'
  end

  def fetch
    'fetching!'
  end

  def speak
    'bark!'
  end
end

class Bulldog < Dog
  def swim
    "can't swim!"
  end
end

pete = Pet.new
kitty = Cat.new
dave = Dog.new
bud = Bulldog.new

# p pete.run                # => "running!"
# p pete.speak              # => NoMethodError
p 
# p kitty.run               # => "running!"
# p kitty.speak             # => "meow!"
# p kitty.fetch             # => NoMethodError
p 
p dave.speak              # => "bark!"
p 
p bud.run                 # => "running!"
p bud.swim                # => "can't swim!"