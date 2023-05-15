class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

# What would happen if I called the methods like shown below?

tv = Television.new
tv.manufacturer
tv.model

Television.manufacturer
Television.model

# Calling `tv.manufacturer` would result in a NoMethod error because we have only defined a class method with the name #manufacturer and `tv` is an instance of Television.
# calling `tv.model` will call the method correctly because it is an instance method.
# Exactly the opposite happens with the next two.
# Calling `Television.manufacturer` will work as intended because it is a class method being called on a class.
# Calling `Television.model` will result in a NoMethod error because #model is defined as an instance method and Television is a class.
