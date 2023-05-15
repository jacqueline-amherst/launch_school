module Hatchback
  def open_hatch
    "My trunk is actually useful!"
  end
end

class Vehicle
  attr_accessor :current_speed, :year, :model, :color, :vehicles

  @@vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@vehicles += 1
  end

  def self.vehicle_count
    @@vehicles
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def spray_paint(color)
    color = color
    puts "You whip out some #{color} spray paint and recolor the whole car."
  end

  def self.calculate_gas_mileage(miles_per_tank, gallons_per_tank)
    miles_per_tank / gallons_per_tank
  end

  private

  def age
    Time.new.year - self.year
  end
end

class MyCar < Vehicle
  include Hatchback
  # NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
end

module Hatchback
  def open_hatch
    "My trunk is actually useful!"
  end
end

subaru = MyCar.new(2005, "Forester", "Silver")
ford = MyTruck.new(1975, "F100", "Red")

p subaru.age
