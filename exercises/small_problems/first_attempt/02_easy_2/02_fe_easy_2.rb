# Further Exploration:
#   Modify the program to ask for the input measurements in feet.
# Display the results in square feet, square inches, and square centimeters.

SQFEET_TO_SQMETERS = 10.7639
SQFEET_TO_SQINCHES = 12
SQMETERS_TO_SQCENTI = 100

puts '==> Enter the length of the room in feet: '
length = gets.to_f

puts '==> Enter the width of the room in feet: '
width = gets.to_f

square_feet = (length * width).round(2)
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_meters = (square_feet * SQFEET_TO_SQMETERS).round(2)
square_centimeters = (square_meters * SQMETERS_TO_SQCENTI).round(2)

puts "The area of the room is #{square_feet} square feet"
puts "(#{square_inches} square inches)"
puts "(#{square_meters} square meters)"
puts "(#{square_centimeters} square centimeters)"