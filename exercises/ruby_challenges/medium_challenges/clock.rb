=begin

- Clock uses 24-hour format

#at(hours, minutes)
  - instantiates a new clock object at the given time

#to_s
   - returns time in a (00:00) format

#+
  - returns new clock object

#-
  - returns new clock object

#==
  - returns true if two clock objects have the same time

--- ALGORITHM ---

#initialize(hours, minutes)
  - save the number of total_minutes

#at(hours, minutes)
  - initialize a new clock object

#==
  - return true if a clock's total_minutes is the same as another clock's
  - false otherwise

#to_s
  - return the formatted hours and minutes of clock
  - '00:00'

#+(added_minutes)
  - initialize new clock object with total_minutes + added minutes
  - get the hours and minutes to pass as arguments

#-(subtracted_minutes)
  - initialize new clock object with total_minutes - subtracted_minutes
  - get the hours and minutes to pass as arguments

private methods

#to_hours
  - convert total_minutes to [hours, minutes]
    - divmod total_minutes by 60

#normalize_minutes
  - divmod minutes by 1440, return remainder

#to_minutes(hours, minutes)
  - multiply hours by 60
  - add minutes
=end

class Clock
  attr_reader :total_minutes

  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

  def initialize(hours, minutes = 0)
    @total_minutes = to_minutes(hours, minutes)
  end

  def self.at(hours, minutes = 0)
    Clock.new(hours, minutes)
  end

  def to_s
    hours, minutes = to_hours(total_minutes)
    format("%02d:%02d", hours, minutes)
  end

  def ==(other_clock)
    total_minutes == other_clock.total_minutes
  end

  def +(minutes)
    hours, minutes = to_hours(total_minutes + minutes)
    Clock.new(hours, minutes)
  end

  def -(minutes)
    hours, minutes = to_hours(total_minutes - minutes)
    Clock.new(hours, minutes)
  end

  private

  def to_minutes(hours, minutes)
    minutes = (hours * MINUTES_PER_HOUR) + minutes
    normalize_minutes(minutes)
  end

  def to_hours(minutes)
    minutes.divmod(MINUTES_PER_HOUR)
  end

  def normalize_minutes(minutes)
    minutes % MINUTES_PER_DAY
  end
end
