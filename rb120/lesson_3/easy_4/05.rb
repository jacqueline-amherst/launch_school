# You are given the following class that has been implemented:

class KrispyKreme
  attr_reader :filling_type, :glazing

  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
    filling = @filling_type == nil ? "plain" : @filling_type
    glaze = @glazing == nil ? "plain" : @glazing

    if filling == 'plain' && glaze == 'plain' 
      "Plain"
    elsif glaze == 'plain'
      "#{filling}"
    else
      "#{filling.capitalize} with #{glaze}"
    end
  end
end

# And the following specification of expected behavior:

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
  # => "Plain"

puts donut2
  # => "Vanilla"

puts donut3
  # => "Plain with sugar"

puts donut4
  # => "Plain with chocolate sprinkles"

puts donut5
  # => "Custard with icing"

  # Write additional code for KrispyKreme such that the puts statements will work as specified above.

  # input: two variables, either string objects or nil
  # output: a string
  # rules:
  #   - if both variables are nil, output the string "Plain"
  #   - otherwise follow a "#{variable1} with #{variable2}"
  #   - but if either variable is nil, replace it with "plain"
  # ----------------
  #
  # - if a variable is nil, substitute 'plain'
  #



  # ---------------
  # I realize after checking the given solution that I could have finished this problem more quickly and effectively if I had taken a little longer to understand the problem.
  