# What is used in this class but doesn't add any value?

class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level of super high and a color of green"
  end

end

# The explicit return on line 12 is unnecessary because the string will be returned anyway.
# The entirety of line 4 could be omitted.
# `attr_accessor` is defining getter and setter methods for both @brightness and @color, but none of those methods are being used in this code.
# There is currently no need for either of them.
