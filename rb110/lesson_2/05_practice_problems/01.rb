# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

new_arr = arr.sort_by { |num| num.to_i }

p new_arr