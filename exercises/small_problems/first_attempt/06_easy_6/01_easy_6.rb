# Cute Angles
#   Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes, and seconds.
# You should use a degree symbol (°) to represent degrees, a single quote (') to represent minutes, and a double quote (") to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds.
# You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g. `321°03'07"`

# - Example
#   - decimal_degrees = 121.135
#
#   1. Isolate everything after the decimal point. The whole number is the degrees.
#     - degrees = 121
#     - decimal = .135
#   2. Multiply decimal by 60
#     - minutes_decimal = decimal * 60
#   3. The whole number becomes minutes, remainder becomes seconds_decimal
#     - minutes = 60
#     - seconds_decimal = .1
#   4. multiply seconds_decimal by 60 to get seconds
#     - seconds = 6
#   5. Format all sections (degrees°minutes'seconds")
#     - 121°08'06"

DEGREE = "\xC2\xB0"

def dms(float)
  degrees, decimal = float.divmod(1)
  decimal = decimal * 60
  minutes, decimal = decimal.divmod(1)
  seconds = (decimal * 60).to_i
  sprintf(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

p dms(30) #== %(30°00'00")
p dms(76.73) #== %(76°43'48")
p dms(254.6) #== %(254°36'00")
p dms(93.034773) #== %(93°02'05")
p dms(0) #== %(0°00'00")
p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")