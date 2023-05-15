def print_sound(animal)
  puts animal.sound
end

class Cat
  def sound
    "Meow"
  end
end

class Dog
  def sound
    "Woof"
  end
end

cat = Cat.new
dog = Dog.new

print_sound(cat) # Output: "Meow"
print_sound(dog) # Output: "Woof"