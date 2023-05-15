# If we have a Car class and a Truck class and we want to be able to go_fast, 
# how can we add the ability for them to go_fast using the module Speed? 
# How can you check if your Car or Truck can now go fast?

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed

  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed

  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

my_car = Car.new
my_truck = Truck.new

my_car.go_fast
my_truck.go_fast

# I've added `include Speed` in the class definition for both `Car` and `Truck`.
# This is called 'mixing in' a module, and gives both classes access to the module's methods.
# To test if they can go_fast, I have instantiated a `Car` and a `Truck` object and called the go_fast method on them both.