# After Midnight (Part 2)
#   As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight, negative is before.
# Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

#---------------
#
# Given `time`
# - initialize `hours`, set to the first two characters of `time`, converted to integer
# - initialize `minutes` set to last two characters of `time`, converted to integer
# - initialize `total_minutes`, set to (`hours` * MINUTES_PER_HOUR) + minutes
# 

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def after_midnight(time)
  hours = time[0, 2].to_i
  minutes = time[3, 2].to_i
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY
end

def before_midnight(time)
  total_minutes = after_midnight(time)
  return 0 if total_minutes == 0
  MINUTES_PER_DAY - total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0