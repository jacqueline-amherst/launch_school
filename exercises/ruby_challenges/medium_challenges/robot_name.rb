=begin
--- PROBLEM ---

  - rules:
    - Robots receive randomly generated name upon instantiation
    - Robots get new name upon reset
    - names have a scheme -- two uppercase letters followed by three digits
    - no two robots can have the same name

--- SCRATCH ---

--- ALGORITHM ---

- set a class variable with an empty array
  - any time a new name is generated it is added to this array
  - new names are checked against array to make sure there are no repeats

#initialize
- call reset and store value as name

#name
- retrieves name variable

#reset
- assign new value to name
- name consists of two uppercase letters followed by three digits

=end

class Robot
  attr_reader :name

  @@names = []

  def initialize
    reset
  end

  def reset
    @@names.delete(name)

    loop do
      @name = ''
      2.times { name << ('A'..'Z').to_a.sample }
      3.times { name << ('0'..'9').to_a.sample }
      break unless @@names.include?(name)
    end

    @@names << name
  end
end

puts Robot.new.name
