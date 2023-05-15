# Given the following code:

class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

# what is the result of executing the following code?

oracle = Oracle.new
oracle.predict_the_future

# This code will return (but not print) "You will" + one of the elements from the `choices` method.
