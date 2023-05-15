# In the last question we had a module called Speed which contained a go_fast method. 
# We included this module in the Car class as shown below.
# When we called the go_fast method from an instance of the Car class (as shown below) 
# you might have noticed that the string printed when we go fast includes the name of the type of vehicle we are using. 
# How is this done?

module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

# ... code omitted...

>> small_car = Car.new
>> small_car.go_fast
"I am a Car and going super fast!"

# This is done by calling `.class` on on `self` in the method definition for go_fast.
# `self` in this case is the calling object, which our `small_car`.
# Since `small_car` is an object of the Car class, `self.class` returns Car.
# We're using string interpolation by encloing the method call in #{}, which automatically calls to_s on whatever's between the brackets, which converts `Car` to "Car"