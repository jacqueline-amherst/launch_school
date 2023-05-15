class Person
  attr_accessor :name
  attr_reader :nickname

  def initialize(name)
    @name = name
    @nickname = @name
  end

  def new_nickname=(other_name)
    @nickname += other_name
  end
end

ghost = Person.new('Spooky')
puts ghost.name
puts ghost.nickname

ghost.new_nickname=("Goo")

puts ghost.name
puts ghost.nickname
