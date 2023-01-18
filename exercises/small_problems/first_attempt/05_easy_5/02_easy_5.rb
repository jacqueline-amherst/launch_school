# After Midnight (Part 1):
#   The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#   Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format.
# Your method should work with any integer input.

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def time_of_day(integer)
  hours, minutes = (integer % MINUTES_PER_DAY).divmod(MINUTES_PER_HOUR)
  sprintf("%.2d:%.2d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440)

# This is the second time I've solved this problem, but I'm pretty proud of my solution.

