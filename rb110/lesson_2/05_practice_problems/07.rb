# Given this code, what would be the final values of `a` and `b`?
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# a = 4
# b = [3, 8]
# On line 6 `arr` = [2, [5, 8]]
# on line 8, `arr[0]` references `a`, which references 2. 
# Line 8 could be re-written as `arr[0] = a + 2`.
# Since integers are immutable, `a` is not mutated on line 8. It still points to 2.
# Therefore, on line 9 when `a` is subtracted from 5, `a` is 2.
# 5 - 2 = 3

# Okay so my logic is slightly off. Using setter methods doesn't mutate anything except the array itself.
# Even if `a` had been a string, it wouldn't have been mutated.
# I.e.

a = 'carrot'
b = 'celery'
arr = [a, b]
arr[0] += 'bug'
p arr
puts a 
