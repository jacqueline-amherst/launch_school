require 'date'
require 'pry'
require 'pry-byebug'

class Meetup
  attr_reader :given_date

  WEEKDAYS = %w(sunday monday tuesday wednesday thursday friday saturday)
  ORDINALS = { 'first' => 1,  'second' => 2, 'third' => 3,
               'fourth' => 4, 'fifth' => 5 }

  def initialize(year, month)
    @given_date = Date.new(year, month)
  end

  def day(weekday, target)
    [weekday, target].map(&:downcase!)

    case target
    when *ORDINALS.keys then find_xth(weekday, target)
    when 'teenth' then find_teenth(weekday)
    when 'last' then find_last(weekday)
    end
  end

  def find_first(weekday)
    date = given_date

    loop do
      # binding.pry
      break if date.wday == WEEKDAYS.index(weekday)
      date = date.next_day
    end

    date
  end

  def find_xth(weekday, target)
    date = find_first(weekday)
    target_week = ORDINALS[target]
    current_week = 1

    loop do
      # binding.pry
      break if target_week == current_week
      date = add_week(date)
      current_week += 1
    end

    return nil unless same_month?(date)

    date
  end

  def find_last(weekday)
    return find_xth(weekday, 'fifth') unless find_xth(weekday, 'fifth').nil?
    find_xth(weekday, 'fourth')
  end

  def find_teenth(weekday)
    date = find_first(weekday)

    until (13..19).include?(date.day)
      date = add_week(date)
    end

    date
  end

  private

  def add_week(date)
    # binding.pry
    7.times { date = date.next_day }
    date
  end

  def same_month?(date)
    date.month == given_date.month
  end
end

# p Meetup.new(2013, 9).day('Saturday', 'first')
