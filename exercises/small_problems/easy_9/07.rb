# Grade Book:
#   Write a method that determines the mean of the three scores passed to it, and returns the letter value associated with that grade.
# Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
# -----------
# input: 3 integers between 0 and 100
# output: a string representing grade
# rules:
#   - scores: 90..100 = A, 80..90 = B, 70..80 = C, 60..70 = D, 0..60 = F
#   - mean is result of adding all integers and dividing by number of integers
# ------------
# - set `mean` to the sum of the three integers divided by 3
# - determine which range `mean` falls into
# - return the grade that corresponds to the range
# -----------

def get_grade(score1, score2, score3)
  mean = (score1 + score2 + score3) / 3
  case mean
  when (101..)   then 'A+'
  when (91..100) then 'A'
  when (81..90)  then 'B'
  when (71..80)  then 'C'
  when (61..70)  then 'D'
  else                'F'
  end
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"
p get_grade(100, 105, 120)