# How Big is the Room?
#   Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

def convert_to_sq_ft(sq_meter)
  (sq_meter * 10.7639).round(2)
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = length * width
square_feet = convert_to_sq_ft(square_meters)

puts "The area of the room is #{square_meters.to_s} square meters (#{square_feet.to_s} square feet)."