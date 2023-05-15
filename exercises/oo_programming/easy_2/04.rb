# Reverse Engineering:
# Write a class that will display:
# ABC
# xyz
# When the following code is run.

class Transform
  def initialize(data)
    @data = data
  end

  def uppercase
    @data.upcase
  end

  def self.lowercase(string)
    string.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

# - Class named Transform
# - constructor method takes a string argument (`@str`)
# - contains a method, uppercase, which returns `@str` all caps
# - contains a method, lowercase, which takes an argument `str` and returns it all lowercase