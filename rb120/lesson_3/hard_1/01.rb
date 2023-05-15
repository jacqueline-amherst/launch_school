# Ben and Alyssa are working on a vehicle management system. 
# So far, they have created classes called Auto and Motorcycle to represent automobiles and motorcycles. 
# After having noticed common information and calculations they were performing for each type of vehicle, they decided to break out the commonality into a separate class called WheeledVehicle. 
# This is what their code looks like so far:

module Wheeled
  attr_reader :tire_index

  def tire_pressure
    @tires[tire_index]
  end

  def inflate_tire(tire_index, pressure)
    @tires[tire_index] = pressure
  end
end

class Vehicle
  attr_accessor :speed, :heading

  def initialize(km_traveled_per_liter, liters_of_fuel_capacity)
    @fuel_efficiency = km_traveled_per_liter
    @fuel_capacity = liters_of_fuel_capacity
  end

  def range
    @fuel_capacity * @fuel_efficiency
  end
end

class Auto < Vehicle
  include Wheeled
  def initialize
    # 4 tires are various tire pressures
    super(50, 25.0)
    @tire_index = [30,30,32,32]
  end
end

class Motorcycle < Vehicle
  include Wheeled
  def initialize
    # 2 tires are various tire pressures
    super(80, 8.0)
    @tire_index = [20,20]
  end
end

# Now Alan has asked them to incorporate a new type of vehicle into their system - a Catamaran defined as follows:

class Catamaran
  attr_reader :propeller_count, :hull_count
  attr_accessor :speed, :heading

  def initialize(num_propellers, num_hulls, km_traveled_per_liter, liters_of_fuel_capacity)
    # ... code omitted ...
  end
end

# This new class does not fit well with the object hierarchy defined so far. Catamarans don't have tires. But we still want common code to track fuel efficiency and range. 
# Modify the class definitions and move code into a Module, as necessary, to share code among the Catamaran and the wheeled vehicles.

car = Auto.new
moto = Motorcycle.new

p moto
p car