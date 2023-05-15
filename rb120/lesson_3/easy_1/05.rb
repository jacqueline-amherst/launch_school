# Which of these two classes would create objects that would have an instance variable and how do you know?

class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

# The `Pizza` class would create objects that have an instance variable.
# This is because instance variables are denoted with a prepended `@` such as on line 11, `@name`
# In the `Fruit` class, a local variable is intialized because it lacks the leading `@`