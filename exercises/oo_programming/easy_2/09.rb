# Nobility

module Walkable
  def walk
    puts "#{name} #{gait} forward"
  end
end

class Noble
  include Walkable
  attr_reader :surname, :title

  def initialize(surname, title)
    @surname = surname
    @title = title
  end

  def name
    "#{self.title} #{self.surname}"
  end

  private

  def gait
    "struts"
  end
end

class Person
  include Walkable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  private

  def gait
    "strolls"
  end
end

byron = Noble.new("Byron", "Lord")
# puts byron.name
byron.walk
# => "Lord Byron struts forward"