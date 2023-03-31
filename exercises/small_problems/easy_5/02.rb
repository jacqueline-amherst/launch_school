# After Midnight (Part 1)
#   The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.
#   Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm)
# Your method should work with any integer input.
# You may not use the `Date` or `Time` classes.

#------ Understand the Problem ----------
#
# input: positive or negative integer
# output: time in (hh:mm) format
#
# rules: 
#     - Positive integers are treated as number of minutes after midnight (count forward)
#     - Negative are minutes before (count backward)
#     - Method should work with any integer
#
#--------- Algorithm ------------
#
# - Initialize constant, MINUTES_PER_DAY, 1440
# - Initialize constant, MINUTES_PER_HOUR, 60.0
# 
# Given 'integer'
# - initialize `sign`, ('+') if integer is positive, ('-') if negative
# - perform a modulo operation on integer using MINUTES_PER_DAY in order to ensure that integer is <= MINUTES_PER_DAY
# - If sign is '-':
#   - reassign integer to MINUTES_PER_DAY - integer 
# - modulo integer by MINUTES_PER_HOUR:
#   - result = hours
#   - remainder = minutes
# - format (hh:mm) where hh is result, mm is remainder
#
#-------- Code ------------
require 'pry'

MINUTES_PER_DAY = 1440
MINUTES_PER_HOUR = 60

def time_of_day(minutes)
  minutes = minutes % MINUTES_PER_DAY
  hours, minutes = minutes.divmod(MINUTES_PER_HOUR)
  sprintf("%.2d:%.2d", hours, minutes)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
