class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age  = 0
  end

  def make_one_year_older
    @age += 1
  end
end

cat = Cat.new("tortie")
cat.make_one_year_older
puts cat.age

# In the make_one_year_older method we have used self. 
# What is another way we could write this method so we don't have to use the self prefix?

# In this case we can rewrite line 10 as `@age += 1`.
# Since `+=` is a setter method we can't rewrite the line as `age += 1` or Ruby will think we're trying to add 1 to an uninitialized local variable.
# Appeding `@` accesses the instance variable directly.
