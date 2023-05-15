class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def self.what_is
    p self
  end
end

michael = Person.new("Michael", 22)
Person.what_is

