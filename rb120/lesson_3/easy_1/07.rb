# You can see in the make_one_year_older method we have used self. 
# What does self refer to here?

class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

# In this case, `self` is referring to the current instance of the Cat class that calls this method.
