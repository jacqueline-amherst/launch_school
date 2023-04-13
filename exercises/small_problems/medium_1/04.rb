# 1000 Lights:
#   You have a bank of switches before you, numbered from 1 to `n`.
# Each switch is connected to exactly one light that is initially off.
# You walk down the row of switches and toggle every one of them.
# You go back to the beginning, and on the second passy, you toggle the switches 2, 4, 6, and so on.
# On the third pass you go back again to the beginning and toggle switches 3, 6, 9 and so on.
# You repeat this process and keep going until you have been through `n` repetitions.
#   Write a method that takes one argument, the total number of switches, and returns an Array that identifies which lights are on after `n` repetitions.
# ---------- Problem
# Input: an integer
# Output: an array of integers
# Rules:
#   - All lights start on.
#   - For each iteration the starting number goes up, starting with 2 on iteration 1
#   - This continues until the iteration coinciding with the original integer has finished
#   - The return array contains the number (not index!) of each light that is on
# ---------- Data Structure
# Example with 5 lights
#     1 2 3 4 5
# R1: 0 0 0 0 0
# R2: 0 - 0 - 0
# R3: 0 - - - 0
# R4: 0 - - 0 0 
# R5: 0 - - 0 -
#
# Structure as a nested array, one sub-array for each light, containing its number and state
# [[1, true], [2, true]...] 
#
# ---------- Algorithm
# - Given `integer`
# - Initialize an array with a subarray for 1 up to integer containing the current iteration number and `true`
# - for each number from 2 up to integer:
#   - using (number + 1) as the dividing number, iterate over each subarray
#     - if the integer at index 0 is evenly divisible by divisor, flip it (mutating)
# - return the array
# ---------- Code

def lightswitch(int)
  arr = []
  result = []
  1.upto(int) { |num| arr << [num, true] }
  2.upto(int) do |num|
    arr.each do |subarr|
      if subarr[0] % num == 0
        subarr[1] = !subarr[1]
      end
    end
  end

  arr.each { |subarr| result << subarr[0] if subarr[1] == true }
  result
end

p lightswitch(5)
p lightswitch(10)