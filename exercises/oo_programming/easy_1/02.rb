# # What's the Output?
# What output does this code print? 
# Fix this class so that there are no surprises waiting in store for the unsuspecting developer.

class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end

  def same_name?(name)
    @name.object_id == name.object_id
  end
end

name = 'Fluffy'
fluffy = Pet.new(name) # => @name = "Fluffy"
# puts fluffy.same_name?(name)

# puts fluffy.name # => "Fluffy"
# puts fluffy # => "My name is FLUFFY."
# puts fluffy.name
# puts name

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name # => "42"
puts fluffy # => "My name is 42"
puts fluffy.name # => "42"
puts name # => 43

# When `fluffy` is initialized on line 32, the `name` parameter is set to a new instance variable called `@name`.
# `@name` is set to the local variable `name` converted to a string, which is '42'
# At this point `@name` and `name` are no longer pointing to the same object -- `@name` is pointing to a string object and `name` is pointing to an Integer object.
# Therefore when `name += 1` is called on line 32, it's only affecting the local variable `name`.
# On line 34 `puts` is calling `to_s` on the `fluffy` Object, which in turn calls `upcase` on `fluffy.name`.
# Since it is a String Object that method call does work, but it's not changed because numbers doon't have an upper and lowercase version.
# So it remains the same.
# Even if it was a mutating call to `to_s` it would remain the same.
# The last thing is a call to the local variable `name`, which has incremented to 43.
