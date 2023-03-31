# Leap Years (Part 1)
#   In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4,
#   unless the year is also divisible by 100.
#   If the year is evenly divisible by 100, it is not a leap year unless the year is evenly divisible by 400.
#   Assume this rule is good for any year greater than year 0.
#   Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, false otherwise.

def leap_year?(year)
  return "Year must be greater than 0." if year <= 0
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  else year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

# Further Exploration:
#   Evaluating in the order shown will not include years that are divisible by 400 because all years that are divisible by 400 are also divisible by 100, and those return false.
#   
#   It is not possible to test if the year is divisible by 4 first, then 100, then 400, unless it is done with conditionals.
#   For instance, the first test could be whether the year is divisible by 4 but not by 100, then to test whether the year is divisible by both 100 and 400
#
#   first test: year % 4 == 0 && year % 100 != 0
#   second test: year % 100 == 0 && year % 400 == 0
