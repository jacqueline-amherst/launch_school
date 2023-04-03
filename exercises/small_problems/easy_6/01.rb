# Cute Angles:
#   Write a method that takes a floating point number that represents an angle between 0 and 360 degrees
# and returns a String that represents that angle in degrees, minutes, and seconds.
# You should use a degree symbol to represent degrees, a single quote to  represent minutes, and a double quote to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds.
# °
# -----------
#
# - initialize `degrees` set to the absolute value of `angle` modulo FULL_CIRCLE
# - subtract degrees from angle
# - set `minutes` to result of the absolute value of angle * 60
# - subtract minutes from angle
# - set seconds to result of angle * 60
# - format and return degrees:minutes:seconds in 00°00'00"

FULL_CIRCLE = 360

def dms(angle)
  degrees = angle.to_i
  angle = (angle - degrees) * 60
  minutes = angle.to_i
  seconds = ((angle - minutes) * 60).to_i
  sprintf(%(d°%.2d'%.2d"), degrees, minutes, seconds)
end

#puts dms(30) #== %(30°00'00")
#puts dms(76.73) #== %(76°43'48")
#p dms(254.6) #== %(254°36'00")
#p dms(93.034773) #== %(93°02'05")
#p dms(0) #== %(0°00'00")
#p dms(360) #== %(360°00'00") || dms(360) == %(0°00'00")
