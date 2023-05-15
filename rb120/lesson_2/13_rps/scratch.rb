class Cat
  attr_reader :name, :age
  @@total_cats = 0

  def initialize(name)
    @name = name
    @@total_cats += 1
  end

  def jump
    puts "#{name} is jumping!"
  end

  def to_s
    @name
  end

  def self.total_cats
    @@total_cats
  end
end

anya = Cat.new("Anya")
anya.jump
p anya.age