# Avoid Mutation
#   The following code is flawed.
# It currently allows @name to by modified from outside the method via a deestructive method call.
# Fix the code so that it returns a copy of @name instead of a reference to it.

class Person
  def initialize(name)
    @name = name
  end

  def name
    @name.clone
  end
end

person1 = Person.new('James')
person1.name.reverse!
puts person1.name