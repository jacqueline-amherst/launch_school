class MyRange
  def initialize(min, max)
    range = min..max
    puts range.size
  end
end

MyRange.new(1, 7)