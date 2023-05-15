class Something
  attr_accessor :state

  def initialize
    state = :on
  end
  
end

it = Something.new
puts it.state