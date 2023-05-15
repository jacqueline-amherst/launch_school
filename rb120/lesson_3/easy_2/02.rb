# We have an Oracle class and a RoadTrip class that inherits from the Oracle class.
# What is the result of the following?

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
puts trip.predict_the_future

# This code should do the same as the previous (return "You will <something>")
# but this time the <something> will be replaced by one of the three choices in RodTrip's `choices` method (["visit Vegas", "fly to Fiji", "romp in Rome"])
# The reason this happens is because an object of the RoadTrip class is calling `predict_the_future` this time.
# Since `predict_the_future` is an instance method, and `RoadTrip` is a descendent of `Oracle` and therefore has access to its methods,
# we can imagine that `predict_the_future` is being called from within `RoadTrip`.
# Defining a method that is contained in a superclass in a subclass overrides the parent method by placing the new method earlier in the method lookup.
# Therefore, when `choices.sample` is called on line 6, it is the `choices` method from RoadTrip that is referenced, not the one in `Oracle`

# This behavior could be overridden by calling `self.choices.sample` instead, which would explicitly call `Oracle`'s `choices` method.
