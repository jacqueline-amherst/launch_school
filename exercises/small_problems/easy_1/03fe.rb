=begin
Modify `stringy` so it takes an additional optional argument that defaults to 1.
If the method is called with this argument set to 0, the method should return a string of alternating 0s and 1s but starting with 0 instead of 1
=end

def stringy(size, start = 1)
  numbers = []

  size.times do |index|
    if start == 1
      number = index.even? ? 1 : 0
      numbers << number
    elsif start == 0
      number = index.even? ? 0 : 1
      numbers << number
    end
  end

  numbers.join
end

puts stringy(6)
puts stringy(6, 0)