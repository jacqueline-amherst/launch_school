# After Midnight (Part 2):
#   As seen in the previous exercise, the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#   Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the rance (0..1439)
#   You may not use Date and Time methods.

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def normalize_minutes(time)
  hours, minutes = time[0, 2], time[3, 2]
  total_minutes = (hours.to_i * MINUTES_PER_HOUR) + minutes.to_i
end

def before_midnight(time)
  total_minutes = normalize_minutes(time)
  total_minutes > 0 ? MINUTES_PER_DAY - total_minutes : 0
end

def after_midnight(time)
  total_minutes = normalize_minutes(time)
  total_minutes % MINUTES_PER_DAY
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00')  == 0